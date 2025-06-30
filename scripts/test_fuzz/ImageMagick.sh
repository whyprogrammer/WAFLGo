git clone https://github.com/ImageMagick/ImageMagick.git
cd ImageMagick; git checkout commit_hash_here
export ADD="-g --notI "
export CC=/home/WAFLGo/afl-clang-fast CXX=/home/WAFLGo/afl-clang-fast++  CFLAGS="$ADD" CXXFLAGS="$ADD"
export AFL_CC=gclang AFL_CXX=gclang++

./configure --disable-shared --prefix=`pwd`
make clean;make -j $(nproc) 
unset AFL_CC AFL_CXX
cp ./utilities/magick ./
get-bc magick
mkdir fuzz; cd fuzz
cp ../magick.bc .

echo $'' > $TMP_DIR/BBtargets.txt
git diff HEAD^1 HEAD > ./commit.diff
cp /home/showlinenum.awk ./
sed -i -e 's/\r$//' showlinenum.awk
chmod +x showlinenum.awk
cat ./commit.diff |  ./showlinenum.awk show_header=0 path=1 | grep -e "\.[ch]:[0-9]*:+" -e "\.cpp:[0-9]*:+" -e "\.cc:[0-9]*:+" | cut -d+ -f1 | rev | cut -c2- | rev > ./targets

/home/WAFLGo/instrument/bin/cbi --targets=targets magick.bc --stats=false
cp ./targets_id.txt /home
cp ./suffix.txt /home
cp ./targets*.txt /home
cp ./distance.txt /home
cp ./branch-distance.txt /home
cp ./branch-distance-min.txt /home
cp ./branch-curloc.txt /home
cp ./*_data.txt /home

/home/WAFLGo/afl-clang-fast++ magick.ci.bc ../MagickCore/.libs/libMagickCore-7.Q16HDRI.a ../MagickWand/.libs/libMagickWand-7.Q16HDRI.a -lstdc++ -lpthread -lz -lxml2 -o magick.ci
cp ./bbinfo-fast.txt /home/bbinfo-ci-bc.txt
cp ./branch-distance-order.txt /home
cp ./*-distance-order.txt /home
cp ./*-order.txt /home

/home/WAFLGo/afl-fuzz  -T waflgo-imagemagick -t 1000+ -m none -z exp -c 45m -q 1 -i /home/jpg/ -o /home/ImageMagick-fuzz-output/ -- /home/ImageMagick-incomplete/fuzz/magick.ci  convert @@ /home/ImageMagick-fuzz-output/output.cip