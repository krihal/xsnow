

#define MAXSNOWFLAKES 1000     /* Max no. of snowflakes */
#define INITIALSNOWFLAKES 100  /* Initial no. of snowflakes */
#define MAXYSTEP 10             /* falling speed max */
#define MAXXSTEP 2             /* drift speed max */
#define WHIRLFACTOR 3
#define INITWINSNOWDEPTH 15
#define INITIALSCRPAINTSNOWDEPTH 8  /* Painted in advance */
#define INITSCRSNOWDEPTH 50    /* Will build up to INITSCRSNOWDEPTH */
#define SNOWFREE 25  /* Must stay snowfree on display :) */

/* ------------------------------------------------------------------ */

/* Speed for each Santa */
int Speed[] = {1,  /* Santa 0 */
               2,  /* Santa 1 */
               4}; /* Santa 2 */


/* ------------------------------------------------------------------ */

#include "pixmaps/snow00.xbm"
#include "pixmaps/snow01.xbm"
#include "pixmaps/snow02.xbm"
#include "pixmaps/snow03.xbm"
#include "pixmaps/snow04.xbm"
#include "pixmaps/snow05.xbm"
#include "pixmaps/snow06.xbm"
#define SNOWFLAKEMAXTYPE 6  

typedef struct Snow {
    int intX;
    int intY;
    int xStep;    /* drift */
    int yStep;    /* falling speed */
    int active;
    int visible;
    int insnow;
    int whatFlake;
} Snow;


typedef struct SnowMap {
	char *snowBits;
	Pixmap pixmap;
	int width;
	int height;
} SnowMap;

SnowMap snowPix[] = {
  {snow00_bits, None, snow00_height, snow00_width},
	{snow01_bits, None, snow01_height, snow01_width},
	{snow02_bits, None, snow02_height, snow02_width},
	{snow03_bits, None, snow03_height, snow03_width},
	{snow04_bits, None, snow04_height, snow04_width},
	{snow05_bits, None, snow05_height, snow05_width},
	{snow06_bits, None, snow06_height, snow06_width}
}; 

/* ------------------------------------------------------------------ */

#include "pixmaps/tannenbaum.xbm"

typedef struct TannenbaumMap {
        char *tannenbaumBits;
        Pixmap pixmap;
        int width;
        int height;
} TannenbaumMap;

TannenbaumMap tannenbaumPix[] = {
        {tannenbaum_bits, None, tannenbaum_height, tannenbaum_width}
};

/* ------------------------------------------------------------------ */

#include "pixmaps/BigSanta1.XPM"
#include "pixmaps/BigSanta2.XPM"
#include "pixmaps/BigSanta3.XPM"
#include "pixmaps/BigSanta4.XPM"

#include "pixmaps/BigSantaRudolf1.XPM"
#include "pixmaps/BigSantaRudolf2.XPM"
#include "pixmaps/BigSantaRudolf3.XPM"
#include "pixmaps/BigSantaRudolf4.XPM"

#include "pixmaps/MediumSanta1.XPM"
#include "pixmaps/MediumSanta2.XPM"
#include "pixmaps/MediumSanta3.XPM"
#include "pixmaps/MediumSanta4.XPM"

#include "pixmaps/MediumSantaRudolf1.XPM"
#include "pixmaps/MediumSantaRudolf2.XPM"
#include "pixmaps/MediumSantaRudolf3.XPM"
#include "pixmaps/MediumSantaRudolf4.XPM"

#include "pixmaps/RegularSanta1.XPM"
#include "pixmaps/RegularSanta2.XPM"
#include "pixmaps/RegularSanta3.XPM"
#include "pixmaps/RegularSanta4.XPM"

#include "pixmaps/RegularSantaRudolf1.XPM"
#include "pixmaps/RegularSantaRudolf2.XPM"
#include "pixmaps/RegularSantaRudolf3.XPM"
#include "pixmaps/RegularSantaRudolf4.XPM"

#define MAXSANTA				2
#define PIXINANIMATION	4
 
