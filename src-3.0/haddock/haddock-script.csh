#!/bin/tcsh

######################################################################
# Author: Peter Ljungl�f
# Time-stamp: "2005-05-12, 23:17"
# CVS $Date: 2005/05/13 12:40:20 $
# CVS $Author: peb $
#
# a script for producing documentation through Haddock 
######################################################################

set basedir = `pwd`
set docdir = haddock/html
set tempdir = haddock/.temp-files
set resourcedir = haddock/resources

set files = (`find GF -name '*.hs'` GF.hs)

######################################################################

echo 1. Creating and cleaning Haddock directory
echo -- $docdir 

mkdir -p $docdir
rm -rf $docdir/*

######################################################################

echo
echo 2. Copying Haskell files to temporary directory: $tempdir

rm -rf $tempdir

foreach f ($files) 
    # echo -- $f
    mkdir -p `dirname $tempdir/$f`
    perl -pe 's/^#/-- CPP #/' $f > $tempdir/$f
end

######################################################################

echo
echo 3. Invoking Haddock

cd $tempdir
haddock -o $basedir/$docdir -h -t 'Grammatical Framework' $files
cd $basedir

######################################################################

echo
echo 4. Restructuring to HTML framesets

echo -- Substituting for frame targets inside html files
mv $docdir/index.html $docdir/index-frame.html
foreach f ($docdir/*.html) 
    # echo -- $f
    perl -pe 's/<HEAD/<HEAD><BASE TARGET="contents"/; s/"index.html"/"index-frame.html"/; s/(<A HREF = "\S*index\S*.html")/$1 TARGET="index"/' $f > .tempfile
    mv .tempfile $f
end

echo -- Copying resource files:
echo -- `ls $resourcedir/*.*`
cp $resourcedir/*.* $docdir

######################################################################

echo
echo 5. Finished
echo -- The documentation is located at:
echo -- $docdir/index.html

