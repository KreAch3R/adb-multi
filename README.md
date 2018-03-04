# ADB-multi

A simple ADB wrapper to manage your development needs for multiple devices.

## Prerequisites
 * Common sense
 * Basic linux environment knowledge *(I don't know what you need ADB for if you don't have it)*
 * ADB correctly installed in *$PATH*
 * ***~/bin*** directory inside *$PATH*
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

If run with `generate` as the argument, the script will find your currently connected ADB devices, and create two scripts *per device* inside your *~/bin* directory (This may change in the future, if new functions are needed).

Current scripts:
   * **adb-$FILENAME**: standard ADB wrapper, with current device info. Expect everything to work as it should (everything is piped through).   
   * **adb-$FILENAME-push**: automates one of the most usual `adb push` commands, inside */sdcard*:
      ```
      adb push $FILE /sdcard
      ```

## Installation

Find a way to place adb-multi inside your *$PATH*. My preferred method is cloning the repository inside *~/bin* and then adding **~/bin/adb-multi** to my *$PATH*, but you can improvise. As long as you can type ```adb-multi``` and the scripts answers, you're good.

**NOTICE**: Regardless of how you're going to install **adb-multi**, the generated *adb-$FILENAME-** scripts **WILL** be placed under *~/bin*. This means that your *~/bin* should be inside your *$PATH* env variable already.

it also assumes you have already installed the adb binary.
