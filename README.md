Fix my EXIF!
===
Sometimes I probably lose control of my keyboard and I mess with the ordering of my Shotwell
pictures library. Old photos are at the top and new contents keep being presented later on…
This script is an attempt to sort things out in the most elegant manner, using different sources.

# How to use it
```shell
# Fixing May 2023 pictures:
./main.exp ~/Images/Photos/2023/05
```

# Operation
This script considers several source of data on the pictures:
* the UNIX `stat()` file attributes;
* the picture's EXIF data;
* the filename.
