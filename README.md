Fix my EXIF!
===
Sometimes I probably lose control of my keyboard and I mess with the ordering of my pictures
library in Shotwell. Old photos are are the top and new contents keep being presented later on.
This script is an attempt to sort things out in the most elegant manner

# How to use it
TODO

# Operation
This script considers several source of data on the pictures:
* the UNIX `stat()` file attributes;
* the picture's EXIF data;
* the filename.
