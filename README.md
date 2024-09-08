# MaixSense_ROS
[中文 README](README_ZH.md)


## Build

Documentation for building is found in

[**MaixSense-A010**](https://wiki.sipeed.com/hardware/en/maixsense/maixsense-a010/maixsense-a010.html#Secondary-development%3AAccess-ROS)

**[MaixSense-A075V](https://wiki.sipeed.com/hardware/en/maixsense/maixsense-a075v/maixsense-a075v.html#Use-ROS)**

## Wierd setup...
The camera seems that id does not have any `CameraParms.json` in text format. It has been reconstructed.
After reboot the camera seems to replace it with some binary data.

Here are the locations of this file in the camera:
```
/home/maix_dist/CameraParms.json
/mnt/UDISK/maix_dist/CameraParms.json
/mnt/cfg/CameraParms.json
/root/maix_dist/CameraParms.json
/tmp/CameraParms.json
```

You can copy the file into the `/tmp` directory and it seems to work just fine.

