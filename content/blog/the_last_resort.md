+++
title = "The Last Resort - how to force remote reboot"
date = "2020-12-07T11:05:35"
tags = ["software", "teaching", "remote", "cloud", "linux", "reboot"]
categories = ["software"]
banner = "//feetpin.files.wordpress.com/2018/06/bungy-wide-angle.jpg"
comments = true
showDate = true
+++

{{< figure class="old_photo" src="//feetpin.files.wordpress.com/2018/06/bungy-wide-angle.jpg" >}}

## Problem

Deadlocks are bad creatures in the unix world. Sometimes, you willl need to kill your machine forcely, but what if you are using a remote machine?

In the COVID-19 situation, it could be difficult to get a machine up again if you forcely shutdown it (e.g. `shutdown -now`). So, you need to reboot. The issue is that `reboot` kindly unmount filesystems and wait for processes to shutdown.

## Solution

If you want to abruptly shutdown your system, simply does as following:

- `echo 1 > /proc/sys/kernel/sysrq`
- `echo b > /proc/sysrq-trigger`

## How it works

This is the lowest level method in a Linux system. It first enables the sysrq mode which is used for rescue the system. You can use it even in your PC with a simple [key combination](//en.wikipedia.org/wiki/Magic_SysRq_key). Then it sends the rescue action to take (`b` is for reboot).

In other words, the first command is the equivalent of `Alt + Stamp`, the second command is the equivalent of the key pressed successively.

## Only as last Resort

Right now, I'm still waiting that my machine completely comes back. It answers to ping again, so it rebooted, but it refuses ssh connections. Probably, the hard-reboot created some problem in the filesystem. I hope it solves it by itself, otherwise I'll need a human intervention!

Good luck!
