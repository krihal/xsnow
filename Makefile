# Makefile generated by imake - do not edit!
# $TOG: imake.c /main/104 1998/03/24 12:45:15 kaleb $

# ----------------------------------------------------------------------
# Makefile generated from "Imake.tmpl" and <Imakefile>
# $TOG: Imake.tmpl /main/249 1997/10/13 15:28:56 kaleb $
#
#
#
#
# $XFree86: xc/config/cf/Imake.tmpl,v 3.87 2000/12/02 19:06:57 herrb Exp $
# ----------------------------------------------------------------------

all::

.SUFFIXES: .i

# $TOG: Imake.cf /main/30 1998/04/28 13:55:25 barstow $

# $XFree86: xc/config/cf/Imake.cf,v 3.63 2000/11/06 19:24:00 dawes Exp $

# Keep cpp from replacing path elements containing 1/i586/i686

#  for compatibility with 3.3.x

# -----------------------------------------------------------------------
# site-specific configuration parameters that need to come before
# the platform-specific parameters - edit site.def to change

# site:  $TOG: site.sample /main/r64_final/1 1998/02/05 16:28:49 kaleb $

# site:  $XFree86: xc/config/cf/site.def,v 3.24 2000/06/25 20:17:29 dawes Exp $

# $XFree86: xc/config/cf/xf86site.def,v 3.170 2000/12/14 16:38:45 dawes Exp $

# ----------------------------------------------------------------------
# platform-specific configuration parameters - edit linux.cf to change

# platform:  $TOG: linux.cf /main/47 1998/04/17 11:32:51 mgreess

# platform:  $XFree86: xc/config/cf/linux.cf,v 3.157 2000/12/14 17:00:46 dawes Exp $

# operating system:  SuSE Linux [ELF] (2.4.0)
# libc:	(6.2.0)
# binutils:	(30)

# $TOG: lnxLib.rules /main/14 1998/03/16 11:15:30 mgreess $
# $XFree86: xc/config/cf/lnxLib.rules,v 3.38 2000/06/15 20:49:56 dawes Exp $

# $XFree86: xc/config/cf/xfree86.cf,v 3.338 2000/12/14 16:59:06 dawes Exp $

# $TOG: xfree86.cf /main/38 1997/10/22 13:01:59 kaleb $

AFB_DEFS = -DUSE_AFB

DRIVERSDKDIR = $(USRLIBDIR)/Server
DRIVERSDKMODULEDIR = $(USRLIBDIR)/Server/modules
DRIVERSDKINCLUDEDIR = $(USRLIBDIR)/Server/include

       XF86SRC = $(SERVERSRC)/hw/xfree86
    XF86COMSRC = $(XF86SRC)/common
 XF86PARSERSRC = $(XF86SRC)/parser
     XF86OSSRC = $(XF86SRC)/os-support
 XF86DRIVERSRC = $(XF86SRC)/drivers
     DRIVERSRC = $(XF86DRIVERSRC)

        XFREE86DOCDIR = $(DOCDIR)
      XFREE86PSDOCDIR = $(DOCPSDIR)
    XFREE86HTMLDOCDIR = $(DOCHTMLDIR)
XFREE86JAPANESEDOCDIR = $(DOCDIR)/Japanese

# $XConsortium: xf86.rules /main/9 1996/10/31 14:54:26 kaleb $
# $XFree86: xc/config/cf/xf86.rules,v 3.32 2000/10/30 23:02:06 tsi Exp $

# ----------------------------------------------------------------------
# site-specific configuration parameters that go after
# the platform-specific parameters - edit site.def to change

# site:  $TOG: site.sample /main/r64_final/1 1998/02/05 16:28:49 kaleb $

# site:  $XFree86: xc/config/cf/site.def,v 3.24 2000/06/25 20:17:29 dawes Exp $

# ---------------------------------------------------------------------
# Imake rules for building libraries, programs, scripts, and data files
# rules:  $TOG: Imake.rules /main/227 1998/02/02 12:07:57 kaleb $
#
#
#
#
# rules:  $XFree86: xc/config/cf/Imake.rules,v 3.86 2000/12/12 17:05:30 dawes Exp $

 _NULLCMD_ = @ echo -n

GLIDE2INCDIR = /usr/include/glide

GLIDE3INCDIR = /usr/include/glide3

GLIDE3LIBNAME = glide3

TKLIBNAME =

TKLIBDIR =

TCLLIBNAME =

TCLIBDIR =

          PATHSEP = /
            SHELL = /bin/sh -e

              TOP = .
      CURRENT_DIR = .

            IMAKE = imake
           DEPEND = gccmakedep
        MKDIRHIER = mkdir -p
          REVPATH = revpath
    EXPORTLISTGEN =
             RMAN = rman
      RMANOPTIONS = -f HTML
        CONFIGSRC = $(TOP)/config
         IMAKESRC = $(CONFIGSRC)/imake
        DEPENDSRC = $(CONFIGSRC)/util

          INCROOT = /usr/include
        USRLIBDIR = /usr/lib
           VARDIR = /var
        VARLIBDIR = $(VARDIR)/lib
  SYSTEMUSRLIBDIR = /usr/lib
  SYSTEMUSRINCDIR = /usr/include
         SHLIBDIR = /usr/lib
       LINTLIBDIR = $(USRLIBDIR)/lint
          MANPATH = /usr/man
    MANSOURCEPATH = $(MANPATH)/man
           MANDIR = $(MANSOURCEPATH)1
        LIBMANDIR = $(MANSOURCEPATH)3
       FILEMANDIR = $(MANSOURCEPATH)5
       MISCMANDIR = $(MANSOURCEPATH)$(MISCMANSUFFIX)
     DRIVERMANDIR = $(MANSOURCEPATH)$(DRIVERMANSUFFIX)
     LOGDIRECTORY = $(VARDIR)/log

        VARRUNDIR = $(VARDIR)/run

         VARDBDIR = /var/lib

               AR = ar clq
  BOOTSTRAPCFLAGS =
               CC = gcc
               AS = as

.SUFFIXES: .cc

              CXX = c++
          CXXFILT = c++filt
           CXXLIB =
    CXXDEBUGFLAGS = -O2
CXXDEPENDINCLUDES =
 CXXEXTRA_DEFINES =
CXXEXTRA_INCLUDES =
   CXXSTD_DEFINES = -Dlinux -D__i686__ -D_POSIX_C_SOURCE=199309L -D_POSIX_SOURCE -D_XOPEN_SOURCE -D_BSD_SOURCE -D_SVID_SOURCE    $(CXXPROJECT_DEFINES)
       CXXOPTIONS =
      CXXINCLUDES = $(INCLUDES) $(TOP_INCLUDES) $(CXXEXTRA_INCLUDES)
       CXXDEFINES = $(CXXINCLUDES) $(CXXSTD_DEFINES) $(THREADS_CXXDEFINES) $(CXXEXTRA_DEFINES) $(DEFINES)
         CXXFLAGS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(THREADS_CXXFLAGS) $(CXXDEFINES)

         COMPRESS = compress
          GZIPCMD = gzip
              CPP = /lib/cpp $(STD_CPP_DEFINES)
           RAWCPP = /lib/cpp -undef $(STD_CPP_OPTIONS)
    PREPROCESSCMD = gcc -E $(STD_CPP_DEFINES)
          INSTALL = install
     INSTALLFLAGS = -c
               LD = ld
              LEX = flex -l
               M4 = m4
          M4FLAGS =
           LEXLIB = -lfl
             YACC = bison -y
           CCYACC = bison -y
             LINT = lint
      LINTLIBFLAG = -C
         LINTOPTS = -axz
               LN = ln -s
             MAKE = make
               MV = mv -f
               CP = cp

           RANLIB = ranlib
  RANLIBINSTFLAGS =

               RM = rm -f
             PERL = perl
         PERLOPTS =
        MANSUFFIX = 1x
     LIBMANSUFFIX = 3x
    FILEMANSUFFIX = 5x
    MISCMANSUFFIX = 7
  DRIVERMANSUFFIX = 4
          MANDEFS = -D__filemansuffix__=$(FILEMANSUFFIX) -D__miscmansuffix__=$(MISCMANSUFFIX) -D__drivermansuffix__=$(DRIVERMANSUFFIX) -D__projectroot__=$(PROJECTROOT)

            TROFF = groff -Tps
            NROFF = nroff
         MSMACROS = -ms
        MANMACROS = -man
              TBL = tbl
              EQN = eqn
             NEQN = neqn
              COL = col
         COLFLAGS = -b
            MODCC = gcc
           MODCPP = /lib/cpp
        MODCFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(THREAD_CFLAGS) $(ALLDEFINES)
            MODAS = as
       MODASFLAGS =
            MODLD = ld
       MODLDFLAGS =
MODLDCOMBINEFLAGS = -r
            MODAR = ar clq
        MODRANLIB =

     STD_INCLUDES =
  STD_CPP_OPTIONS = -traditional
  STD_CPP_DEFINES = -traditional -Dlinux -D__i386__ -D_POSIX_C_SOURCE=199309L -D_POSIX_SOURCE -D_XOPEN_SOURCE -D_BSD_SOURCE -D_SVID_SOURCE    $(PROJECT_DEFINES)
      STD_DEFINES = -Dlinux -D__i386__ -D_POSIX_C_SOURCE=199309L -D_POSIX_SOURCE -D_XOPEN_SOURCE -D_BSD_SOURCE -D_SVID_SOURCE    $(PROJECT_DEFINES)
 EXTRA_LOAD_FLAGS =
  EXTRA_LDOPTIONS =
  EXTRA_LIBRARIES =
             TAGS = ctags

   PARALLELMFLAGS =

    SHAREDCODEDEF =
         SHLIBDEF =

     SHLIBLDFLAGS = -shared

         PICFLAGS = -fPIC

      CXXPICFLAGS = -fPIC

    PROTO_DEFINES = -DFUNCPROTO=15 -DNARROWPROTO

     INSTPGMFLAGS =

     INSTBINFLAGS = -m 0755
     INSTUIDFLAGS = -m 4711
     INSTLIBFLAGS = -m 0644
     INSTINCFLAGS = -m 0444
     INSTMANFLAGS = -m 0444
     INSTDATFLAGS = -m 0444
    INSTKMEMFLAGS = -m 4711

      PROJECTROOT = /usr/

      CDEBUGFLAGS = -O2
        CCOPTIONS =

      ALLINCLUDES = $(INCLUDES) $(EXTRA_INCLUDES) $(TOP_INCLUDES) $(STD_INCLUDES)
       ALLDEFINES = $(ALLINCLUDES) $(STD_DEFINES) $(EXTRA_DEFINES) $(PROTO_DEFINES) $(THREADS_DEFINES) $(MODULE_DEFINES) $(DEFINES)
           CFLAGS = $(CDEBUGFLAGS) $(CCOPTIONS) $(THREADS_CFLAGS) $(MODULE_CFLAGS) $(ALLDEFINES)
        LINTFLAGS = $(LINTOPTS) -DLINT $(ALLDEFINES) $(DEPEND_DEFINES)
         LDPRELIB = -L$(USRLIBDIR)
        LDPOSTLIB =
        LDOPTIONS = $(CDEBUGFLAGS) $(CCOPTIONS)  $(EXTRA_LDOPTIONS) $(THREADS_LDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIBS)
     CXXLDOPTIONS = $(CXXDEBUGFLAGS) $(CXXOPTIONS) $(EXTRA_LDOPTIONS) $(THREADS_CXXLDFLAGS) $(LOCAL_LDFLAGS) $(LDPRELIBS)

           LDLIBS = $(LDPOSTLIBS) $(THREADS_LIBS) $(SYS_LIBRARIES) $(EXTRA_LIBRARIES)

           CCLINK = $(CC)

          CXXLINK = $(CXX)

     LDSTRIPFLAGS = -x
   LDCOMBINEFLAGS = -r
      DEPENDFLAGS =

# Not sure this belongs here
         TKLIBDIR =
         TKINCDIR =
        TKLIBNAME =
        TKLIBRARY = -L$(TKLIBDIR) -l$(TKLIBNAME)
        TCLLIBDIR =
        TCLINCDIR =
       TCLLIBNAME =
       TCLLIBRARY = -L$(TCLLIBDIR) -l$(TCLLIBNAME)

        MACROFILE = linux.cf
           RM_CMD = $(RM)

    IMAKE_DEFINES =

         IRULESRC = $(CONFIGDIR)
        IMAKE_CMD = $(IMAKE) -DUseInstalled -I$(IRULESRC) $(IMAKE_DEFINES)

     ICONFIGFILES = $(IRULESRC)/Imake.tmpl $(IRULESRC)/X11.tmpl 			$(IRULESRC)/site.def $(IRULESRC)/$(MACROFILE) 			$(IRULESRC)/xfree86.cf $(IRULESRC)/xf86.rules $(IRULESRC)/xf86site.def $(IRULESRC)/host.def $(EXTRA_ICONFIGFILES)

# $TOG: X11.rules /main/4 1997/04/30 15:23:24 kaleb $

# $XFree86: xc/config/cf/X11.rules,v 1.5 2000/11/06 19:24:00 dawes Exp $

# ----------------------------------------------------------------------
# X Window System Build Parameters and Rules
# $TOG: X11.tmpl /main/308 1998/06/16 15:14:24 msr $
#
#
#
#
# $XFree86: xc/config/cf/X11.tmpl,v 1.93 2000/12/15 18:18:04 keithp Exp $

STICKY_DEFINES = -DHAS_STICKY_DIR_BIT

FCHOWN_DEFINES = -DHAS_FCHOWN

# -----------------------------------------------------------------------
# X Window System make variables; these need to be coordinated with rules

             XTOP = $(TOP)
           BINDIR = /usr/bin
     BUILDINCROOT = $(TOP)/exports
      BUILDINCDIR = $(BUILDINCROOT)/include
      BUILDINCTOP = ../..
      BUILDLIBDIR = $(TOP)/exports/lib
      BUILDLIBTOP = ../..
      BUILDBINDIR = $(TOP)/exports/bin
      BUILDBINTOP = ../..
   BUILDMODULEDIR = $(BUILDLIBDIR)/modules
   BUILDMODULETOP = $(BUILDLIBTOP)/..
    XBUILDINCROOT = $(XTOP)/exports
     XBUILDINCDIR = $(XBUILDINCROOT)/include/X11
     XBUILDINCTOP = ../../..
     XBUILDBINDIR = $(XBUILDINCROOT)/bin
           INCDIR = $(INCROOT)
           ADMDIR = /usr/adm
           LIBDIR = $(USRLIBDIR)/X11
       LIBEXECDIR = /usr/libexec
        MODULEDIR = $(USRLIBDIR)/modules
   TOP_X_INCLUDES =

        ETCX11DIR = /etc/X11

          CONFDIR = $(ETCX11DIR)

           DOCDIR = $(LIBDIR)/doc
       DOCHTMLDIR = $(DOCDIR)/html
         DOCPSDIR = $(DOCDIR)/PostScript
          FONTDIR = $(LIBDIR)/fonts
     ENCODINGSDIR = $(FONTDIR)/encodings
         XINITDIR = $(LIBDIR)/xinit
           XDMDIR = /etc/X11/xdm
        XDMVARDIR = $(VARLIBDIR)/xdm
           TWMDIR = $(LIBDIR)/twm
           XSMDIR = $(LIBDIR)/xsm
           NLSDIR = $(LIBDIR)/nls
       XLOCALEDIR = $(LIBDIR)/locale
        PEXAPIDIR = $(LIBDIR)/PEX
      LBXPROXYDIR = $(LIBDIR)/lbxproxy
  PROXYMANAGERDIR = $(LIBDIR)/proxymngr
        XPRINTDIR = $(LIBDIR)/xserver
      XAPPLOADDIR = $(LIBDIR)/app-defaults
       FONTCFLAGS = -t

     INSTAPPFLAGS = $(INSTDATFLAGS)

              RGB = $(BINDIR)/rgb
            FONTC = $(BINDIR)/bdftopcf
        MKFONTDIR = $(BINDIR)/mkfontdir
      MKHTMLINDEX = $(BINDIR)/mkhtmlindex
          UCS2ANY = $(BINDIR)/ucs2any.pl
      BDFTRUNCATE = $(BINDIR)/bdftruncate.pl
     UCSMAPPREFIX = $(FONTDIR)/util/map-

     HTMLINDEXCMD = HtmlIndexCmd

       DOCUTILSRC = $(XTOP)/doc/util
        CLIENTSRC = $(TOP)/clients
          DEMOSRC = $(TOP)/demos
       XDOCMACROS = $(DOCUTILSRC)/macros.t
       XIDXMACROS = $(DOCUTILSRC)/indexmacros.t
       PROGRAMSRC = $(TOP)/programs
           LIBSRC = $(XTOP)/lib
          FONTSRC = $(XTOP)/fonts
     ENCODINGSSRC = $(FONTSRC)/encodings
       INCLUDESRC = $(BUILDINCROOT)/include
      XINCLUDESRC = $(INCLUDESRC)/X11
        SERVERSRC = $(XTOP)/programs/Xserver
       CONTRIBSRC = $(XTOP)/../contrib
   UNSUPPORTEDSRC = $(XTOP)/unsupported
           DOCSRC = $(XTOP)/doc
           RGBSRC = $(XTOP)/programs/rgb
      BDFTOPCFSRC = $(PROGRAMSRC)/bdftopcf
     MKFONTDIRSRC = $(PROGRAMSRC)/mkfontdir
    FONTSERVERSRC = $(PROGRAMSRC)/xfs
       FONTINCSRC = $(XTOP)/include/fonts
        EXTINCSRC = $(XTOP)/include/extensions
      FTSOURCEDIR = $(TOP)/extras/FreeType
     XTTSOURCEDIR = $(TOP)/extras/X-TrueType
       MESASRCDIR = $(TOP)/extras/Mesa
  OGLSAMPLESRCDIR = $(TOP)/extras/ogl-sample
        PSWRAPSRC = $(XTOP)/config/pswrap
     TRANSCOMMSRC = $(LIBSRC)/xtrans
   TRANS_INCLUDES = -I$(TRANSCOMMSRC)
 CONNECTION_FLAGS = -DUNIXCONN -DTCPCONN $(STICKY_DEFINES) $(FCHOWN_DEFINES)

       XENVLIBDIR = $(USRLIBDIR)
   CLIENTENVSETUP = LD_LIBRARY_PATH=$(XENVLIBDIR)

# $TOG: lnxLib.tmpl /main/7 1998/03/20 14:26:41 mgreess $
# $XFree86: xc/config/cf/lnxLib.tmpl,v 3.12 1999/06/27 14:07:17 dawes Exp $

          XLIBSRC = $(LIBSRC)/X11

SOXLIBREV = 6.2
DEPXONLYLIB =
XONLYLIB =  -lX11

LINTXONLY = $(LINTLIBDIR)/llib-lX11.ln

         XLIBONLY = $(XONLYLIB)

      XEXTLIBSRC = $(LIBSRC)/Xext

SOXEXTREV = 6.4
DEPEXTENSIONLIB =
EXTENSIONLIB =  -lXext

LINTEXTENSION = $(LINTLIBDIR)/llib-lXext.ln

LINTEXTENSIONLIB = $(LINTEXTENSION)
          DEPXLIB = $(DEPEXTENSIONLIB) $(DEPXONLYLIB)
             XLIB = $(EXTENSIONLIB) $(XONLYLIB)
         LINTXLIB = $(LINTXONLYLIB)

    XSSLIBSRC = $(LIBSRC)/Xss

DEPXSSLIB = $(USRLIBDIR)/libXss.a
XSSLIB =  -lXss

LINTXSS = $(LINTLIBDIR)/llib-lXss.ln

    XXF86MISCLIBSRC = $(LIBSRC)/Xxf86misc

SOXXF86MISCREV = 1.0
DEPXXF86MISCLIB =
XXF86MISCLIB =  -lXxf86misc

LINTXXF86MISC = $(LINTLIBDIR)/llib-lXxf86misc.ln

    XXF86VMLIBSRC = $(LIBSRC)/Xxf86vm

SOXXF86VMREV = 1.0
DEPXXF86VMLIB =
XXF86VMLIB =  -lXxf86vm

LINTXXF86VM = $(LINTLIBDIR)/llib-lXxf86vm.ln

    XXF86DGALIBSRC = $(LIBSRC)/Xxf86dga

SOXXF86DGAREV = 1.0
DEPXXF86DGALIB =
XXF86DGALIB =  -lXxf86dga

LINTXXF86DGA = $(LINTLIBDIR)/llib-lXxf86dga.ln

    XXF86RUSHLIBSRC = $(LIBSRC)/Xxf86rush

DEPXXF86RUSHLIB = $(USRLIBDIR)/libXxf86rush.a
XXF86RUSHLIB =  -lXxf86rush

LINTXXF86RUSH = $(LINTLIBDIR)/llib-lXxf86rush.ln

    XVLIBSRC = $(LIBSRC)/Xv

SOXVREV = 1.0
DEPXVLIB =
XVLIB =  -lXv

LINTXV = $(LINTLIBDIR)/llib-lXv.ln

    XINERAMALIBSRC = $(LIBSRC)/Xinerama

DEPXINERAMALIB = $(USRLIBDIR)/libXinerama.a
XINERAMALIB =  -lXinerama

LINTXINERAMA = $(LINTLIBDIR)/llib-lXinerama.ln

    XINERAMALIBSRC = $(LIBSRC)/Xinerama

DEPXINERAMALIB = $(USRLIBDIR)/libXinerama.a
XINERAMALIB =  -lXinerama

LINTXINERAMA = $(LINTLIBDIR)/llib-lXinerama.ln

    DPSLIBSRC = $(LIBSRC)/dps

SODPSREV = 1.0
DEPDPSLIB =
DPSLIB =  -ldps

LINTDPS = $(LINTLIBDIR)/llib-ldps.ln

    DPSTKLIBSRC = $(LIBSRC)/dpstk

SODPSTKREV = 1.0
DEPDPSTKLIB =
DPSTKLIB =  -ldpstk

LINTDPSTK = $(LINTLIBDIR)/llib-ldpstk.ln

    PSRESLIBSRC = $(LIBSRC)/psres

SOPSRESREV = 1.0
DEPPSRESLIB =
PSRESLIB =  -lpsres

LINTPSRES = $(LINTLIBDIR)/llib-lpsres.ln

    GLXLIBSRC = $(LIBSRC)/GL

SOGLREV = 1.2
DEPGLXLIB =
GLXLIB =  -lGL

LINTGLX = $(LINTLIBDIR)/llib-lGL.ln

    GLWIDGETSRC = $(LIBSRC)/GLw

DEPGLWLIB = $(USRLIBDIR)/libGLw.a
GLWLIB =  -lGLw

LINTGLW = $(LINTLIBDIR)/llib-lGLw.ln

    XRENDERLIBSRC = $(LIBSRC)/Xrender

SOXRENDERREV = 1.0
DEPXRENDERLIB =
XRENDERLIB =  -lXrender

LINTXRENDER = $(LINTLIBDIR)/llib-lXrender.ln

    XFONTCACHELIBSRC = $(LIBSRC)/Xfontcache

DEPXFONTCACHELIB = $(USRLIBDIR)/libXfontcache.a
XFONTCACHELIB =  -lXfontcache

LINTXFONTCACHE = $(LINTLIBDIR)/llib-lXfontcache.ln

         XAUTHSRC = $(LIBSRC)/Xau

DEPXAUTHLIB = $(USRLIBDIR)/libXau.a
XAUTHLIB =  -lXau

LINTXAUTH = $(LINTLIBDIR)/llib-lXau.ln

      XDMCPLIBSRC = $(LIBSRC)/Xdmcp

DEPXDMCPLIB = $(USRLIBDIR)/libXdmcp.a
XDMCPLIB =  -lXdmcp

LINTXDMCP = $(LINTLIBDIR)/llib-lXdmcp.ln

           XMUSRC = $(LIBSRC)/Xmu

SOXMUREV = 6.2
DEPXMULIB =
XMULIB =  -lXmu

LINTXMU = $(LINTLIBDIR)/llib-lXmu.ln

       OLDXLIBSRC = $(LIBSRC)/oldX

DEPOLDXLIB = $(USRLIBDIR)/liboldX.a
OLDXLIB =  -loldX

LINTOLDX = $(LINTLIBDIR)/llib-loldX.ln

         XPLIBSRC = $(LIBSRC)/Xp

SOXPREV = 6.2
DEPXPLIB =
XPLIB =  -lXp

LINTXP = $(LINTLIBDIR)/llib-lXp.ln

       TOOLKITSRC = $(LIBSRC)/Xt

SOXTREV = 6.0
DEPXTOOLONLYLIB =
XTOOLONLYLIB =  -lXt

LINTXTOOLONLY = $(LINTLIBDIR)/llib-lXt.ln

      DEPXTOOLLIB = $(DEPXTOOLONLYLIB) $(DEPSMLIB) $(DEPICELIB)
         XTOOLLIB = $(XTOOLONLYLIB) $(SMLIB) $(ICELIB)
     LINTXTOOLLIB = $(LINTXTOOLONLYLIB)

       XALIBSRC = $(LIBSRC)/Xa

SOXAREV = 1.0
DEPXALIB =
XALIB =  -lXa

LINTXA = $(LINTLIBDIR)/llib-lXa.ln

       AWIDGETSRC = $(LIBSRC)/Xaw

SOXAWREV = 7.0
DEPXAWLIB =
XAWLIB =  -lXaw

LINTXAW = $(LINTLIBDIR)/llib-lXaw.ln

       AWIDGET6SRC = $(LIBSRC)/Xaw6

SOXAW6REV = 6.1
DEPXAW6LIB =
XAW6LIB =  -lXaw

LINTXAW6 = $(LINTLIBDIR)/llib-lXaw.ln

         XILIBSRC = $(LIBSRC)/Xi

SOXINPUTREV = 6.0
DEPXILIB =
XILIB =  -lXi

LINTXI = $(LINTLIBDIR)/llib-lXi.ln

      XTESTLIBSRC = $(LIBSRC)/Xtst

SOXTESTREV = 6.1
DEPXTESTLIB =
XTESTLIB =  -lXtst

LINTXTEST = $(LINTLIBDIR)/llib-lXtst.ln

        PEXLIBSRC = $(LIBSRC)/PEX5

SOPEXREV = 6.0
DEPPEXLIB =
PEXLIB =  -lPEX5

LINTPEX = $(LINTLIBDIR)/llib-lPEX5.ln

        XIELIBSRC = $(LIBSRC)/XIE

SOXIEREV = 6.0
DEPXIELIB =
XIELIB =  -lXIE

LINTXIE = $(LINTLIBDIR)/llib-lXIE.ln

      PHIGSLIBSRC = $(LIBSRC)/PHIGS

DEPPHIGSLIB = $(USRLIBDIR)/libphigs.a
PHIGSLIB =  -lphigs

LINTPHIGS = $(LINTLIBDIR)/llib-lphigs.ln

DEPXBSDLIB = $(USRLIBDIR)/libXbsd.a
XBSDLIB =  -lXbsd

LINTXBSD = $(LINTLIBDIR)/llib-lXbsd.ln

           ICESRC = $(LIBSRC)/ICE

SOICEREV = 6.3
DEPICELIB =
ICELIB =  -lICE

LINTICE = $(LINTLIBDIR)/llib-lICE.ln

            SMSRC = $(LIBSRC)/SM

SOSMREV = 6.0
DEPSMLIB =
SMLIB =  -lSM

LINTSM = $(LINTLIBDIR)/llib-lSM.ln

           XKEYSRC = $(LIBSRC)/Xkey

SOXKEYREV = 6.0
DEPXKEYLIB =
XKEYLIB =  -lXkey

LINTXKEY = $(LINTLIBDIR)/llib-lXkey.ln

         FSLIBSRC = $(LIBSRC)/FS

DEPFSLIB = $(USRLIBDIR)/libFS.a
FSLIB =  -lFS

LINTFS = $(LINTLIBDIR)/llib-lFS.ln

         FONTLIBSRC = $(LIBSRC)/font

SOFONTREV = 1.3
DEPFONTLIB =
FONTLIB = -L$(FREETYPELIBDIR) -L$(FONTLIBSRC)  -lXfont

LINTXFONT = $(LINTLIBDIR)/llib-lXfont.ln
#
SOFONTREV = 1.3
DEPXFONTLIB =
XFONTLIB =  -lXfont

LINTXFONT = $(LINTLIBDIR)/llib-lXfont.ln

     FONTSTUBLIBSRC = $(FONTLIBSRC)/stubs

DEPFONTSTUBLIB = $(USRLIBDIR)/libfntstubs.a
FONTSTUBLIB =  -lfntstubs

LINTFONTSTUB = $(LINTLIBDIR)/llib-lfntstubs.ln
         DEPFONTLIB = $(DEPXFONTLIB) $(DEPFONTSTUBLIB)
            FONTLIB = $(XFONTLIB) $(FONTSTUBLIB)

          XPMLIBSRC = $(LIBSRC)/Xpm

SOXPMREV = 4.11
DEPXPMLIB =
XPMLIB =  -lXpm

LINTXPM = $(LINTLIBDIR)/llib-lXpm.ln

          XFTLIBSRC = $(LIBSRC)/Xft

SOXFTREV = 1.0
DEPXFTLIB =
XFTLIB =  -lXft

LINTXFT = $(LINTLIBDIR)/llib-lXft.ln

FREETYPE2DIR = freetype-2.0.1
FREETYPE2LIBDIR = freetype-2.0.1/lib
FREETYPE2INCDIR = freetype-2.0.1/include/freetype2
FREETYPE2INCLUDES = -I$(FREETYPE2INCDIR)
FREETYPE2LIB = -L$(FREETYPE2LIBDIR) -lfreetype
FREETYPE2DEFINES = -DFREETYPE2

    XKBFILELIBSRC = $(LIBSRC)/xkbfile

DEPXKBFILELIB = $(USRLIBDIR)/libxkbfile.a
XKBFILELIB =  -lxkbfile

LINTXKBFILE = $(LINTLIBDIR)/llib-lxkbfile.ln

     XKBCOMPCMD = $(BINDIR)/xkbcomp

    XKBUILIBSRC = $(LIBSRC)/xkbui

DEPXKBUILIB = $(USRLIBDIR)/libxkbui.a
XKBUILIB =  -lxkbui

LINTXKBUI = $(LINTLIBDIR)/llib-lxkbui.ln

          DEPLIBS = $(DEPXAWLIB) $(DEPXMULIB) $(DEPXTOOLLIB) $(DEPXLIB)

         DEPLIBS1 = $(DEPLIBS)
         DEPLIBS2 = $(DEPLIBS)
         DEPLIBS3 = $(DEPLIBS)
         DEPLIBS4 = $(DEPLIBS)
         DEPLIBS5 = $(DEPLIBS)
         DEPLIBS6 = $(DEPLIBS)
         DEPLIBS7 = $(DEPLIBS)
         DEPLIBS8 = $(DEPLIBS)
         DEPLIBS9 = $(DEPLIBS)
         DEPLIBS10 = $(DEPLIBS)

XMULIBONLY = -lXmu
XMULIB = $(XMULIBONLY) $(XTOOLLIB) $(XLIB)

        CONFIGDIR = $(LIBDIR)/config

    USRLIBDIRPATH = $(USRLIBDIR)
        LDPRELIBS = -L$(USRLIBDIR)
       LDPOSTLIBS =
     TOP_INCLUDES = -I$(INCROOT) $(TOP_X_INCLUDES)
  PROJECT_DEFINES =

CXXPROJECT_DEFINES =

# ----------------------------------------------------------------------
# start of Imakefile

SYS_LIBRARIES = -lm -lXpm
LOCAL_LIBRARIES = $(XLIB)
DEPLIBS = $(DEPXLIB)
SRCS = xsnow.c toon_root.c xsnow.h vroot.h
OBJS = xsnow.o toon_root.o

 PROGRAM = xsnow

all:: xsnow

xsnow: $(OBJS) $(DEPLIBS)
	$(RM) $@
	$(CCLINK) -o $@ $(LDOPTIONS) $(OBJS) $(LOCAL_LIBRARIES) $(LDLIBS)  $(EXTRA_LOAD_FLAGS)

install:: xsnow
	@if [ -d $(DESTDIR)$(BINDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(BINDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTPGMFLAGS)  xsnow $(DESTDIR)$(BINDIR)/xsnow

install.man:: xsnow.man
	@if [ -d $(DESTDIR)$(MANDIR) ]; then set +x; \
	else (set -x; $(MKDIRHIER) $(DESTDIR)$(MANDIR)); fi
	$(INSTALL) $(INSTALLFLAGS) $(INSTMANFLAGS) xsnow.man $(DESTDIR)$(MANDIR)/xsnow.$(MANSUFFIX)

depend::
	$(DEPEND) $(DEPENDFLAGS) -- $(ALLDEFINES) $(DEPEND_DEFINES) -- $(SRCS)

lint:
	$(LINT) $(LINTFLAGS) $(SRCS) $(LINTLIBS)
lint1:
	$(LINT) $(LINTFLAGS) $(FILE) $(LINTLIBS)

clean::
	$(RM) xsnow

# ----------------------------------------------------------------------
# common rules for all Makefiles - do not edit

.c.i:
	$(RM) $@
	 $(CC) -E $(CFLAGS) $(_NOOP_) $*.c > $@

.SUFFIXES: .s

.c.s:
	$(RM) $@
	 $(CC) -S $(CFLAGS) $(_NOOP_) $*.c

emptyrule::

clean::
	$(RM) *.CKP *.ln *.BAK *.bak *.o core errs ,* *~ *.a .emacs_* tags TAGS make.log MakeOut  "#"*

Makefile::
	-@if [ -f Makefile ]; then set -x; \
	$(RM) Makefile.bak; $(MV) Makefile Makefile.bak; \
	else exit 0; fi
	$(IMAKE_CMD) -DTOPDIR=$(TOP) -DCURDIR=$(CURRENT_DIR)

tags::
	$(TAGS) -w *.[ch]
	$(TAGS) -xw *.[ch] > TAGS

man_keywords::

html_index::

# ----------------------------------------------------------------------
# empty rules for directories that do not have SUBDIRS - do not edit

install::
	@echo "install in $(CURRENT_DIR) done"

install.man::
	@echo "install.man in $(CURRENT_DIR) done"

install.sdk::
	@echo "install.sdk in $(CURRENT_DIR) done"

Makefiles::

includes::

depend::

# ----------------------------------------------------------------------
# dependencies generated by makedepend

# DO NOT DELETE
xsnow.o: xsnow.c /usr/include/X11/Intrinsic.h \
 /usr/include/X11/Xlib.h /usr/include/sys/types.h \
 /usr/include/features.h /usr/include/sys/cdefs.h \
 /usr/include/gnu/stubs.h /usr/include/bits/types.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.4/include/stddef.h \
 /usr/include/time.h /usr/include/endian.h /usr/include/bits/endian.h \
 /usr/include/sys/select.h /usr/include/bits/select.h \
 /usr/include/bits/sigset.h /usr/include/sys/sysmacros.h \
 /usr/include/X11/X.h /usr/include/X11/Xfuncproto.h \
 /usr/include/X11/Xosdefs.h /usr/include/X11/Xutil.h \
 /usr/include/X11/Xresource.h /usr/include/string.h \
 /usr/include/X11/Core.h /usr/include/X11/Composite.h \
 /usr/include/X11/Constraint.h /usr/include/X11/Object.h \
 /usr/include/X11/RectObj.h /usr/include/X11/Xos.h \
 /usr/include/fcntl.h /usr/include/bits/fcntl.h \
 /usr/include/sys/stat.h /usr/include/bits/stat.h \
 /usr/include/unistd.h /usr/include/bits/posix_opt.h \
 /usr/include/bits/confname.h /usr/include/getopt.h \
 /usr/include/sys/time.h /usr/include/bits/time.h \
 /usr/include/X11/Xarch.h /usr/include/X11/xpm.h \
 /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.4/include/stdarg.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/include/bits/wchar.h /usr/include/gconv.h \
 /usr/include/bits/stdio_lim.h /usr/include/math.h \
 /usr/include/bits/huge_val.h /usr/include/bits/mathdef.h \
 /usr/include/bits/mathcalls.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.4/include/float.h \
 /usr/include/signal.h /usr/include/bits/signum.h \
 /usr/include/bits/siginfo.h /usr/include/bits/wordsize.h \
 /usr/include/bits/sigaction.h /usr/include/bits/sigcontext.h \
 /usr/include/asm/sigcontext.h /usr/include/bits/sigstack.h \
 /usr/include/ucontext.h /usr/include/sys/ucontext.h \
 /usr/include/limits.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.4/include-fixed/syslimits.h \
 /usr/include/limits.h /usr/include/bits/posix1_lim.h \
 /usr/include/bits/local_lim.h /usr/include/linux/limits.h \
 /usr/include/bits/posix2_lim.h /usr/include/bits/xopen_lim.h \
 /usr/include/stdlib.h /usr/include/bits/waitflags.h \
 /usr/include/bits/waitstatus.h /usr/include/alloca.h xsnow.h \
 pixmaps/snow00.xbm pixmaps/snow01.xbm pixmaps/snow02.xbm \
 pixmaps/snow03.xbm pixmaps/snow04.xbm pixmaps/snow05.xbm \
 pixmaps/snow06.xbm pixmaps/tannenbaum.xbm pixmaps/BigSanta1.XPM \
 pixmaps/BigSanta2.XPM pixmaps/BigSanta3.XPM pixmaps/BigSanta4.XPM \
 pixmaps/BigSantaRudolf1.XPM pixmaps/BigSantaRudolf2.XPM \
 pixmaps/BigSantaRudolf3.XPM pixmaps/BigSantaRudolf4.XPM \
 pixmaps/MediumSanta1.XPM pixmaps/MediumSanta2.XPM \
 pixmaps/MediumSanta3.XPM pixmaps/MediumSanta4.XPM \
 pixmaps/MediumSantaRudolf1.XPM pixmaps/MediumSantaRudolf2.XPM \
 pixmaps/MediumSantaRudolf3.XPM pixmaps/MediumSantaRudolf4.XPM \
 pixmaps/RegularSanta1.XPM pixmaps/RegularSanta2.XPM \
 pixmaps/RegularSanta3.XPM pixmaps/RegularSanta4.XPM \
 pixmaps/RegularSantaRudolf1.XPM pixmaps/RegularSantaRudolf2.XPM \
 pixmaps/RegularSantaRudolf3.XPM pixmaps/RegularSantaRudolf4.XPM \
 toon.h /usr/include/X11/extensions/shape.h
toon_root.o: toon_root.c toon.h /usr/include/X11/Intrinsic.h \
 /usr/include/X11/Xlib.h /usr/include/sys/types.h \
 /usr/include/features.h /usr/include/sys/cdefs.h \
 /usr/include/gnu/stubs.h /usr/include/bits/types.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.4/include/stddef.h \
 /usr/include/time.h /usr/include/endian.h /usr/include/bits/endian.h \
 /usr/include/sys/select.h /usr/include/bits/select.h \
 /usr/include/bits/sigset.h /usr/include/sys/sysmacros.h \
 /usr/include/X11/X.h /usr/include/X11/Xfuncproto.h \
 /usr/include/X11/Xosdefs.h /usr/include/X11/Xutil.h \
 /usr/include/X11/Xresource.h /usr/include/string.h \
 /usr/include/X11/Core.h /usr/include/X11/Composite.h \
 /usr/include/X11/Constraint.h /usr/include/X11/Object.h \
 /usr/include/X11/RectObj.h /usr/include/X11/Xos.h \
 /usr/include/fcntl.h /usr/include/bits/fcntl.h \
 /usr/include/sys/stat.h /usr/include/bits/stat.h \
 /usr/include/unistd.h /usr/include/bits/posix_opt.h \
 /usr/include/bits/confname.h /usr/include/getopt.h \
 /usr/include/sys/time.h /usr/include/bits/time.h \
 /usr/include/X11/Xarch.h /usr/include/X11/xpm.h \
 /usr/include/X11/extensions/shape.h \
 /usr/include/X11/Xatom.h /usr/include/X11/Xproto.h \
 /usr/include/X11/Xmd.h /usr/include/X11/Xprotostr.h \
 /usr/include/stdio.h \
 /usr/lib/gcc/x86_64-linux-gnu/4.4/include/stdarg.h \
 /usr/include/libio.h /usr/include/_G_config.h /usr/include/wchar.h \
 /usr/include/bits/wchar.h /usr/include/gconv.h \
 /usr/include/bits/stdio_lim.h
