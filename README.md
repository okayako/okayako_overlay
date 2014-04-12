##Gentoo overlay
###Basic information
+ Download this overlay over */var/lib/layman*
+ Modify the file */var/lib/layman/make.conf* and add de new repository 
```sh 
PORTDIR_OVERLAY="
...
/var/lib/layman/okayako_overlay
$PORTDIR_OVERLAY"
```

**Note**: All this paths are route by default, you may could to have some different.

