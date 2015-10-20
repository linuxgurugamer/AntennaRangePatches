#!/bin/bash

home=/cygdrive/d/users/jbb


MODNAME=AntennaRangePatches

FILES="AntennaRangePatch4Antennas.cfg AntennaRangePatches.version LICENSE.txt README.md"
FILES2="AIES.cfg 
Aerospace_Parts_By_Hyomoto.cfg
Dmagic_Parts.cfg
DongFangHong.cfg
FASA.cfg
HGR.cfg
Just_Some_Parts.cfg
LICENSE LLL-Lite.cfg
Lionhead_Aerospace.cfg
MWIndustries.cfg
NovaPunch.cfg
RT2-AntennaRange.cfg
Shorter_Range_Squad.cfg
Some_More_Squad.cfg
Tantares.cfg
Telemachus.cfg
US_PARTS.cfg
UmbraSpaceIndustries.cfg"


cat AntennaRangePatches.version
echo -e "Enter version: "
read VERSION
RELEASEDIR=$home/release
INSTALLDIR=$home/install/GameData/${MODNAME}

rm -fr $INSTALLDIR
mkdir $INSTALLDIR

for i in $FILES; do
	cp $i $INSTALLDIR
done
for i in $FILES2; do
	cp AntennaRange-Patch/"$i" $INSTALLDIR
done

cp -a AutoPruner $home/install

cd $HOME/install
zipFile=$RELEASEDIR/${MODNAME}-$VERSION.zip 
rm -f $zipFile
zip -9r $zipFile AutoPruner GameData/$MODNAME
