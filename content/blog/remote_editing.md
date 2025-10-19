+++
title = "Developing and testing on a remote host"
date = "2020-02-11T11:50:35"
tags = ["software", "teaching", "remote", "cloud", "syncthing", "tmux"]
categories = ["software"]
banner = "//www.dalet.com/uploads/2020/11/Remote-Editing-min1_0.png"
comments = true
showDate = true
+++

{{< figure class="old_photo" src="//www.dalet.com/uploads/2020/11/Remote-Editing-min1_0.png" >}}

## Workflow

In this document, you can find an introduction to tools commonly used for remote editing and development. The generla workflow is the following:

1. You create and edit code on your local machine
2. An indipendent software mirrors your code to the host (`syncthing` in this document)
3. You interface with the host through terminal, give commands and run code (`tmux`)
4. Finally, you debug your code (`debug` section), and edit it your local machine

This workflow allows you to:

1. use your preferred software for editing
2. use very low connections (if you are in train or in the smurfs house, for instance)
3. use any language on the host
4. run intensive tasks for many many days without interrupting your connection
5. have the resources on the host machine always at hand

## Basic set up

Create a `.ssh` folder in your home if it doesn't exist and put in it a file called `config` with the following content:

```
Host *
ControlMaster auto
ControlPath ~/.ssh/sockets/%r@%h-%p
ControlPersist 60

Host amadeus.lim.di.unimi.it !exec "[ -e ~/.ssh/socket-%r@%h:%p ]"
LocalForward 22001 localhost:22000
RemoteForward 22001 localhost:22000
LocalForward 8384 localhost:8384
LocalForward 8097 localhost:8097
LocalForward 6006 localhost:6006
```

This configuration allows the reuse of the first connection among several `ssh`
commands: if you connect through ssh to any host, all the folloqing `ssh`
commands will use the first connection: you won't need to retype your password,
the overhead decreases and firewalls will not push you back because of the
proliferating of the number of connections. It also instructs `ssh` command about the
file to be used as socket.

Moreover, we set ssh to always forward certain ports for the server `amadeus.lim.di.unimi.it`.
For instance, port 8097 is the one used by `visdom` for plotting from PyTorch and numpy,
ports 6006, 22001 and 22000 are used by Syncthing for syncing over ssh.

## Syncing with `syncthing`

`syncthing` is an open source p2p syncing tool much more powerful than simple SFTP clients. However it must be configured on both sides.

1. Download and install `syncthing` on both client and host (amadeus has it, but you can still download the pre-compiled binaries in your home if you do not have)
2. Start syncthing on the client and go to `localhost:8384` or to the displayed address
3. Look into `Actions > Show ID` for the client device ID
4. Connect via ssh tunneling to the host `ssh user@host -L 8385:localhost:8384`
5. Start syncthing on the host and go to `localhost:8485` from the client browser to access syncthing host
6. Look into `Actions > Show ID` for the host device ID
7. On both client and host add a remote device (on host with the client ID and on client with host ID)
8. Add a new folder and share it with the host
9. Add ignore patterns (e.g. `.git` )
10. Set folder type to `send only`
11. Check that `watch for changes` is selected
12. Repeat points 8-11 on host
13. On client, click on up-right `Actions > Advanced > [synced folder name] > Fs Watcher Delay` and set to 1 (the minimum allowed, 1 second)

Save the configuration and restart.

If one of your machines is behind a strict firewall, it can be useful to use ssh tunneling for connecting.
This requires a particular configuration that you first connect to the remote machine through ssh with port forwarding and then start syncthing on both machines.
See the `.ssh/config` file in previous paragraph. More info in the [official guides](https://docs.syncthing.net/users/tunneling.html).

## Running tmux

Once you have synced code, you should connect through ssh to the remote host and start `tmux` to run your code. `tmux` is a nice piece of software used for working on remote host. It can be used to run long experiments that need to disconnect your machine (e.g. experiments lasting many days). I really recommend to always use tmux. Using it, you can also use the same terminal creating multiple tabs and split. One recurring pattern, for instance, is having the terminal with 3 splits: one for the experiment running, the second for controlling the resources on the remote machine and the third to give commands to the machine.

For controlling `tmux` you need to prepend each command with `CTRL-b`: everything pressed after this combination will be interpreted as a tmux command and it will not be written to the terminal.
These steps exemplify the use of `tmux`:

1. Connect to the remote host with `ssh username@host`
2. Run `tmux`. Now, a new blank terminal is shown. Notice the bottom bar indicating some useful information
3. Press in sequence `CTRL-b` and `%`. Now the window is splitted.
4. Try `CTRL-b` and `"`.
5. With `CTRL-b` and `x` you can kill the splits (and all the precesses running from it). The same with the command `exit`
6. With `CTRL-b` and arrow you can move to an existing split
7. With `CTRL-b` and `c` you can create a new tab
8. With `CTRL-b` and `[` you enter to "copy mode": in this modality you can go up and down in the terminal and you can select and copy its content. Try surfing with arrows and `PgUp` and `PgDown` keys.
9. Press `CTRL+SPACE` to start copying
10. Press `ALT-w` or `CTRL-w` to copy the selection
11. Press `q` to exit the copy mode
12. Press `CTRL+b` and `]` to paste
13. Try `CTRL+b` and `d`. The tmux session will be detached
14. Exit from the ssh connection and reconnect
15. Use `tmux a` to reattach to the previous session, that is continued to exist

Since key `CTRL-b` is not that comfortable, I suggest to change it: create a file in your home called `.tmux.conf` and put the following lines:

```
unbind-key C-b
set -g prefix `
bind-key ` send-prefix
```

Now instead of pressing `CTRL-b`, you can just press \` char (for italian keyboard, you could use the `\` char, for instance).

You can also customize your keybindings to make them more easy to remember. For instance, I use keybindings very similar to `vim`. For more info see [https://tmuxcheatsheet.com/](https://tmuxcheatsheet.com/).

**N.B. If the terminal become unresponsive, it can be that the ssh connection has been closed server-side (e.g. because of a connection error). In such a case, press `~` and then `.` to close the connection and return to your local terminal. If it doesn't work, see the "SOS" section.**

## Controlling resources

It is a good practice to continuously monitor the resources on the host in a separate split.

For CPU and RAM, just run `htop` command in a seprate always live split.
For GPU, run `watch -n 5 nvidia-smi`. The `watch` command will repeatedly run the `nvidia-smi` command every 5 seconds.
With these two commands you should be able to understand if:

1. you are using too many resources (please, stop your program before the machine RAM is full, otherwise see "SOS" section)
2. you are using too few ersources (for instance if GPU is not used or no parallel processing is in action)
3. you are using wrong resources (too many parallel processes, wrong GPU, etc.)

Note that in `pytorch` you should use internal commands `torch.cuda.memory_allocated` and `torch.cuda.max_memory_allocated` since `nvidia-smi` fails in showing the real amount of RAM used: [docs](https://pytorch.org/docs/stable/notes/cuda.html#memory-management)

## Debugging code

For debugging code from remote you need to use a debugger. I suggest to always debug your code without parallelism whenever possible.

### Python

In Python, just use the default debugger. Since version 3.7 you can simply add the instruction `debugger()` one line before the one you want to start the debug. You can set up your preferred debugger (I suggest `ipdb`). For previous versions use `import pdb; pdb.set_trace()`.

A better debugger is ipdb (`import ipdb; ipdb.set_trace()`). You will probably need to install it: `pip install ipdb`. See its commands by pressing `h` or [here](http://wangchuan.github.io/coding/2017/07/12/ipdb-cheat-sheet.html)

If you really want a graphical debugger, you try [wdb](https://github.com/Kozea/wdb). You will probably need to install it: `pip install wdb`.

Another useful tool is [pysnooper](https://github.com/cool-RR/PySnooper). You can use it in place of printing to stdout or of logging. It's much easier to use and very powerful. I use it for debugging scripts with multiprocessing on different files.

I also recommend to use `pyenv` and `poetry` to isolate your project from the OS python packages.

### Matlab

In `matlab`, you can use the default debugger by using the statement `keyboard` just one line after you want to stop. Then you will be prompted and you can use typical matlab commands to show variables. However, the editing needs the use a `emacs` keys (as of now I am still not able to change these mappings). Remember these ones:

| KEY      | ACTION                                |
| -------- | ------------------------------------- |
| CTRL-a   | move cursor to (at) beginning-of-line |
| CTRL-e   | move cursor to end-of-line            |
| CTRL-f   | move cursor forward one character     |
| CTRL-b\* | move cursor backward one character    |

\* _if you are using the default tmux keymap, `CTRL_B` is also the tmux escape sequence; in this case you'll have to press twice `CTRL-B` to send it to Matlab_

For managing the debugging itself, you can use [dbcont](https://www.mathworks.com/help/matlab/ref/dbcont.html), [dbstep](https://www.mathworks.com/help/matlab/ref/dbstep.html), [dbquit](https://www.mathworks.com/help/matlab/ref/dbquit.html) and all the commands listed in the [official docs](https://www.mathworks.com/help/matlab/debugging-code.html)

### Julia

Use [Debugger](https://github.com/JuliaDebug/Debugger.jl) package: command `]add Debugger` from Julia REPL.
Set breakpoints with `@bp`. Start debugging a function with `@enter functionName(args)` (will stop at the first instruction) or with `@run functionName(args)` (will stop at the first breakpoint).

Open the REPL. Run `include('filename'); mainFunction()` to test mainFunction after having edited it. Alternatively, you can also try [Revise](https://github.com/timholy/Revise.jl) to automatically reload changed modules.

## SOS

It can happen that your program fill the host resources. In that case, you can:

1. try to kill the program from inside the `ssh` connection keeping pressed `CTRL-C`
2. if `1.` doesn't work, create a new terminal or a new split in tmux and run `kill PROCESS NUMBER` (you can find the process number with `ps x` or `htop`)
3. if neither `2.` works for your, try killing the termux split with `CTRL-b` and `x`
4. if your ssh connection is completely saturated or the host doesn't answer, then from another local terminal run `ssh username@host killall program` where `program` is the command of the experiment that your were executing (i.e. `python`, `python3`, `matlab`, etc.). This command will try to create a new ssh connection, run the command `killall program` and then exit suddenly.
5. If the machine is not responding contact the administrator as soon as possible

## Apptainer

### Why

When you are in a server without root access and you need to install some application,
you are in a difficult situation. You can try to install it in your home, but it is not
always possible and usually requires the admin intervention (i.e. Homebrew and Nix).
Moreover, if you are worried about computational performances, Homebrew and Nix are not
the best solutions. The best solution is to use a container.

Containers are environments that are isolated from the rest of the system. Most of the
container technologies, however, still require the admin intervention to be installed,
even though they're much more likely already setup in the server than Homebrew and Nix.

It is difficult to chose the proper technology, though. 99% of the benchmarks around are
made by sysadmins, that are mainly interested in startup times and web server
performances, not in the computational
overhead imposed by the container while running our scientific code.

A few time ago I have made some [little benchmarks](https://github.com/00sapo/Container-benchmarks) for these purposes. The results are
shown below:

![Benchmark](https://camo.githubusercontent.com/fa10bbe543500c6ece9c7bee61edcfef3c9a13397cfe2c551b59ac000767e2d4/68747470733a2f2f646f63732e676f6f676c652e636f6d2f7370726561647368656574732f642f652f32504143582d3176534c727753317a4d647a70744e753549555239336e4e4d664443705571425273536f72595959466c476337683556736549686966617068586b61516d5178623039774e396f6c5a6c43456d6f314a2f70756263686172743f6f69643d343238373434393426666f726d61743d696d616765)
As you see, the best solution is by far Apptainer, then docker, devbox and podman. It
must be noted that docker total score is so high because of its ability to
asynchronously read and write files. However, this is not that relevant for scientific
code, usually. Removed that, I would suggest using podman over docker.

But the truth is that Apptainer has been built for scientific code and perfectly fits
our needs:

1. you can use it everywhere, without root access (docker and podman require some admin
   set ups)
2. an Apptainer image is easy to build and to share, so your code will be totally
   reproducible
3. you can use Docker images in Apptainer, so you can use most of the Docker ecosystem
4. it is fast, especially in terms of CPU and RAM usage
5. it gives you access to your home and files on the server by default in an optimized way

### How

So, use it. The workflow is like this:

1. Install Apptainer in your computer, where you have admin/root access
2. Prepare a file definition that specify an OS, the packages to install and the
   commands to run to configure the container
3. Copy the Apptainer binary installed in your computer to the server (it's portable! 🎉)
4. Build the container
5. Copy the Apptainer image to the server
6. Run the container
7. Execute your code

Points 1 and 2 are executed only once, while 3-5 are executed for each different server
you deal with. Points 6-7 are executed every time you want to run your code.

### Installation

So,
[here](https://apptainer.org/docs/admin/main/installation.html#install-from-pre-built-packages)
(Linux) and
[here](https://apptainer.org/docs/admin/main/installation.html#installation-on-windows-or-mac)
(Windows and Mac) are the instructions to install Apptainer. In Windows, I suggest you
use WSL, which is simpler.

### Building an image

Now you need to define an image. Here is an example that I have used in the past. However,
[here](https://apptainer.org/docs/user/main/definition_files.html) you can find more details.

You can build a definition file with `apptainer build mycontainer.sif mycontainer.def`,
where `mycontainer.def` is the name of the definition file (e.g. the one below) and
`mycontainer.sif` is the name of the image you want to create.

```yaml
# This line means "pick the base container image from
# the docker hub".
# Bootstrap: docker
Bootstrap: localimage

# Whereas here we specify the particular image we are
# interested in using as the base image, in this case
# a basic `fedora` system at version `39`.
# The base image is the operating system configuration
# that you want to customize.
From: fedora:39
# you can also start building from an existing image to modify it
# In this case, comment out this line and the line in %post that were already executed
# From: mycontainer.sif

# environment variables here
%environment
    export LANG=en_US.UTF-8 # luatex needs locale set

# A definition file has several sections, see the documentation.
# In the `post` section you can run commands to customize
# your environment
%post
    # This is the place where you can
    # install additional dependencies.

    ########### My basic stuffs ###########
    # software for development
    dnf -y install tmux neovim syncthing fish zoxide fzf ripgrep openssh-clients openssh powerline git hostname fd-find copr-cli procps-ng syncthing htop
    # python build dependencies
    dnf -y install make gcc patch zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel tk-devel libffi-devel xz-devel libuuid-devel gdbm-libs libnsl2
    # python-pip
    dnf -y install python3-pip
    # lazygit
    dnf -y install 'dnf-command(copr)'
    dnf copr enable atim/lazygit -y
    dnf -y install lazygit
    # font
    curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/SourceCodePro.tar.xz
    # locale
    dnf -y install glibc-locale-source glibc-langpack-en

    ########### Other more specific stuffs ###########
    # luatex and gregotex
    dnf -y install texlive-collection-luatex texlive-collection-fontsrecommended texlive-collection-latexrecommended texlive-collection-latexextra texlive-collection-latex texlive-collection-music texlive-collec
tion-mathscience texlive-gregoriotex
    dnf -y install latexmk

    # tesseract
    dnf -y install tesseract tesseract-langpack-eng tesseract-langpack-ita tesseract-langpack-ita_old tesseract-script-latin tesseract-tools tesseract-osd
```

### Running an image

Now you can run the image. You can do it in two ways:

1. Running an `instance` to which you can connect even after ssh disconnection

- `apptainer instance start mycontainer.sif a_name_for_this_instance`
- `apptainer shell instance://a_name_for_this_instance`
- `apptainer instance stop mycontainer.sif a_name_for_this_instance`

2. Just run some commands in the container and close it

- `apptainer shell mycontainer.sif`

You could actually define a command to run inside the container in the `%runscript`
section of the definition file. In this case, you can just run `./mycontainer.sif` to
run it or `apptainer instance run mycontainer.sif a_name_for_this_instance` to run it in
a detached instance.
