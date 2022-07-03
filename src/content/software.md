+++
title = "Software"
id = "software"
comments = false
schematype = "CollectionPage"
+++

*One day I will write why all software I produce is released with free license, where free is like in speech, not like in beer...*

I'm really thankful to [Framasoft](https://framasoft.org/) for the free service they provide with a completely free GitLab server.

All my software and reasearch code is available online. Here area a few places where you can find my code:

* [Framasoft gitlab page](https://framagit.org/sapo/) - unfortunately, framasoft is closing this service
* [Insitutional gitlab page: Computer Science Department - University of Milan](https://gitlab.di.unimi.it/federicosimonetta/)
* [github.com](https://github.com/00sapo/)
* [github.com/LIMUNIMI](https://github.com/limunimi/)
* [gitlab.com](https://gitlab.com/00sapo/)

### ASMD
This is the source code and documentation for ASMD, a python framework for compiling datasets used in Music Information Retrieval. You can find the paper [here](https://zenodo.org/record/3773286).

[Source Code](https://gitlab.di.unimi.it/federicosimonetta/asmd/)
[Source Code mirror](https://github.com/LIMUNIMI/ASMD)

[Documentation](https://asmd.readthedocs.io/)

### WikiCFP - GGS
A browser extension to safely use WikiCFP. It marks predatory publications and adds rankings from the GGS classification.
It also adds links to SJR and Google Scholar queries. A must for researchers in computer science.

[Source Code](https://github.com/00sapo/wikicfp-ggs)

### PyCarla
A python package to start [Carla](), synthesize MIDI events and recording sounds. Everything from within the code.

[Source Code](https://github.com/00sapo/pycarla)

### Launch Assistance
A simple shell script to ease remote assistance on Linux computers. 1) create a wireguard VPN, 2) use this script to create another script for the assisted machine, 3) give the new script to the user and tell them to execute it: it will connect to the VPN and set up a vnc server (it also installs dependencies on debian/ubuntu, arch/manjaro and fedora), 4) you connect to the VPN and start a vnc client to control the assisted machine remotely.

[Source Code](https://github.com/00sapo/launch_assistance)

### MFP
*Music For Poors* is an HTML5 live-coding and performance sound and music environment. You define sound objects and map them to keys of your keyboard.

[Source Code](https://framagit.org/sapo/mfp)

### Selection tests
Julia code for comparing various solutions to a modified *p*-dispersion problem: find *n* samples in a dataset so that they as farthest as posslbe from each other **and** so that they are representative of the underlying dataset distribution.

[Source Code](https://framagit.org/sapo/selection_test)

### Classification metrics
A useful notebook to compare various classification and regression metrics by visualizing how the sum argument changes. Unexpected findings!

[Source Code](https://framagit.org/sapo/classification-metrics)


### Melody identification in symbolic scores
This is the companion code of my publication [A Convolutional Approach to Melody Line Identification in Symbolic Scores](https://zenodo.org/record/3530592).

It is based on theano, so it's old and if I were you, I would reimplement it in PyTorch or Tensorflow. But, well, you can find all the specifications and use it to compare with other methods (if any exists).

[Source Code](https://limunimi.github.io/Symbolic-Melody-Identification/)

### Predatory Battle
A python script which takes as input a BibTeX file and checks a few lists of predatory journals to detect possible predatory publications. The lists are automatically updated every 30 days.

[Source Code](https://framagit.org/sapo/predatory-battle)

### AltInt-Italian
AltInt-Italian is a keyboard layout specifically designed for Italian programmers. It is derived from the classic US layout with the international extensions but makes even more easy to type the accented letters.

[Source Code](https://framagit.org/sapo/AltInt-Italian)

### OpenEWLD
A Public Domain Leadsheet Dataset. It contains the python script used to create the dataset. Thus, you can recreate the whole [Enhanced Wikifonia Leadsheet Dataset](https://doi.org/10.5281/zenodo.1476554).

[Source Code](https://framagit.org/sapo/OpenEWLD)

### Face Recognition
A C++ reimplementation of Munawar Hayat, Mohammed Bennamoun, Amar A. El-Sallam, An RGB–D based image set classification for robust face recognition from Kinect data, Neurocomputing, https://doi.org/10.1016/j.neucom.2015.07.027.

[Source Code](https://framagit.org/sapo/face_recognition)

### music21-pickle
A python module to build parallel music computing application and to make easier storing and restoring music21 objects.

[Source Code](https://framagit.org/sapo/music21-pickle)
