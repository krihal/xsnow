$! Compile and link Xsnow under VMS 
$!
$! Get compiler info
$!
$ CFLAGS = "/optimize"
$ decc = f$search("SYS$SYSTEM:DECC$COMPILER.EXE") .nes. "" -
        .and. CFLAGS - "/VAXC" .eqs. CFLAGS
$ all_cflags = CFLAGS
$ if decc then all_cflags = "/DECC/PREFIX=ALL " + all_cflags
$!
$!      Build the option-file
$!
$ open/write optf xsnow.opt
$ write optf "xsnow"
$ if .not.decc then write optf "SYS$SHARE:ucx$ipc/lib"
$ write optf "Identification=""Xsnow 1.39""
$!
$!
$!  Find out which X-Version we're running.  This will fail for older
$!  VMS versions (i.e., v5.5-1).  Therefore, choose DECWindows XUI for
$!  default.
$!
$ On Error Then GoTo XUI
$ @sys$update:decw$get_image_version sys$share:decw$xlibshr.exe decw$version
$ if f$extract(4,3,decw$version).eqs."1.0"
$ then
$   write optf "Sys$share:DECW$DWTLIBSHR.EXE/Share"
$ endif
$ if f$extract(4,3,decw$version).eqs."1.1"
$ then
$   write optf "sys$share:decw$xmulibshr.exe/share"
$   write optf "sys$share:decw$xtshr.exe/share"
$ endif
$ if f$extract(4,3,decw$version).eqs."1.2"
$ then
$   write optf "sys$share:decw$xmulibshrr5.exe/share"
$   write optf "sys$share:decw$xtlibshrr5.exe/share"
$ endif
$ GoTo MAIN
$!
$XUI:
$!
$   write optf "Sys$share:DECW$DWTLIBSHR.EXE/Share"
$MAIN:
$!
$ write optf "sys$share:decw$xlibshr.exe/share"
$ if .not.decc then write optf "SYS$SHARE:VAXCRTL/SHARE"
$ close optf
$ cc'all_cflags' xsnow.c
$ link xsnow.opt/opt
$ exit
