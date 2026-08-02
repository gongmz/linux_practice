1、这个代码和原始的不一样，采用的是和head.s一样的编译器as，另外语法也是AT&T，和最初的不一样；
2、因为默认是从软盘FLOPPY启动的，所以root_dev为0,0，但是bootset.s里面的判断是硬件启动的，因此直接编译是通不过的，目前还不知道有什么区别，在build.c中直接将major_root和minor_root设置了；