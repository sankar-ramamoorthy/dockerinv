cd $OUTDIR
for file in $INPDIR/*.pdf
do
  infilename=$file
  filenamestem="$infilename%.*}"
  pngfilename="$filenamestem"".png"
  errfilename="$filenamestem"".err"
  tifffilename="$filenamestem"".tiff"
  pdftoppm -singlefile -png $infilename -r 300 >$WORKDIR/$pngfilename 2>$WORKDIR/$errfilename
  convert -density 300 $WORKDIR/$pngfilename -depth 8 -strip -background white -alpha off $WORKDIR/$tifffilename
  tesseract $WORKDIR/$tifffilename $OUTDIR/$filenamestem -l eng --psm 1 --oem 3 txt hocr
done
