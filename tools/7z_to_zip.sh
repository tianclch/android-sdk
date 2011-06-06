export file7z=$(readlink -e $1)
export fileZip=$(basename $file7z)
export fileZip=${fileZip%.*}.zip
export fileZip=$(readlink -f $fileZip)

echo 7z = $file7z
echo zip = $fileZip

mkdir tmp
cd tmp
7z x $file7z
zip -r $fileZip *
cd ..
rm -r -f tmp