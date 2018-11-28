# ADB-multi

A simple ADB wrapper to manage your development needs for multiple devices.

## Prerequisites
 * Common sense
 * Basic linux environment knowledge *(I don't know what you need ADB for if you don't have it)*
 * ADB correctly installed in *$PATH*
 * ***~/bin*** directory inside *$PATH*
 * ***CUSTOM $PATH*** variable directory inside *$PATH* (check [#L32](https://github.com/KreAch3R/adb-multi/blob/2f652363422e41f1105c1ed102e091f833b40d85/adb-multi#L32))
 * multiple ADB enabled devices

## What it's for

We all hate it when we try to quickly type an adb command like `adb push` only to be confronted by this hell:
```
error: more than one device/emulator
```

Of course, this is a byproduct of having simultaneously connected a lot of adb enabled devices to our development PC, and `adb devices` is having a party of unknown and random numbers *(No, I don't remember what 008343w18bdde21c is)*.

**ADB-multi** is here to solve this.

## How it works

It is an adb wrapper/script generation program which wraps around the standard adb commands and provides
* easier connections between devices    
* valuable info during the programming, like the current connected device   

The screenshot speaks for itself!

<img src="screenshots/screenshot.png?raw=true">

### Script generation

If run with `generate` as the argument, the script will find your currently connected ADB devices, and create 5 scripts *per device* inside your **CUSTOM $PATH variable** directory. You can also specify the device names:

<img src="screenshots/screenshot2.png?raw=true">

Current scripts:
   * **adb-$FILENAME**: standard ADB wrapper, with current device info. Expect everything to work as it should (everything is piped through).   
   * **adb-$FILENAME-push**: automates one of the most usual `adb push` commands, and pushes the file to a specified *$ADBDESTDIR* directory (script variable). Default is `/sdcard`:
      ```
      adb push $FILE /sdcard
      ```
  * **adb-$FILENAME-screenshot**: grabs a screenshot from the device using the `screencap` utility and saves it into the development's machine *$SCREENDIR* folder (script variable).
  * **adb-$FILENAME-activity**: finds out the current activity path shown on the device
  * **adb-$FILENAME-install**: installs an apk to the device, and handles the infamous case of "-r" argument on its own

## Installation

Find a way to place adb-multi inside your *$PATH*. My preferred method is cloning the repository inside *~/bin* and then adding **~/bin/adb-multi** and **CUSTOM $PATH variable** to my *$PATH*, but you can improvise. As long as you can type ```adb-multi``` and the scripts answers, you're good.

it also assumes you have already installed the adb binary.
