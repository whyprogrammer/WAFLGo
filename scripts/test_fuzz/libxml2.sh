git clone https://gitlab.gnome.org/GNOME/libxml2.git
cd libxml2; git checkout 

export ADD="-g  -O0 --notI -fsanitize=address"
export CC=/home/WAFLGo/afl-clang-fast CXX=/home/WAFLGo/afl-clang-fast++  CFLAGS="$ADD" CXXFLAGS="$ADD"
export AFL_CC=gclang AFL_CXX=gclang++

./configure --disable-shared --prefix=`pwd`
make clean;make -j $(nproc) 
unset AFL_CC AFL_CXX
 get-bc xmllint;mkdir fuzz; cd fuzz;cp ../xmllint.bc ./

 echo $'' > $TMP_DIR/BBtargets.txt
git diff HEAD^1 HEAD > ./commit.diff
cp /home/showlinenum.awk ./
sed -i -e 's/\r$//' showlinenum.awk
chmod +x showlinenum.awk
cat ./commit.diff |  ./showlinenum.awk show_header=0 path=1 | grep -e "\.[ch]:[0-9]*:+" -e "\.cpp:[0-9]*:+" -e "\.cc:[0-9]*:+" | cut -d+ -f1 | rev | cut -c2- | rev > ./targets

/home/WAFLGo/instrument/bin/cbi --targets=targets xmllint.bc --stats=false
cp ./targets_id.txt /home
cp ./suffix.txt /home
cp ./targets*.txt /home
cp ./distance.txt /home
cp ./branch-distance.txt /home
cp ./branch-distance-min.txt /home
cp ./branch-curloc.txt /home
cp ./*_data.txt /home

/home/WAFLGo/afl-clang-fast++ xmllint.ci.bc  -lstdc++  -o xmllint.ci  -lz
cp ./bbinfo-fast.txt /home/bbinfo-ci-bc.txt
cp ./branch-distance-order.txt /home
cp ./*-distance-order.txt /home
cp ./*-order.txt /home

timeout 12h /home/WAFLGo/afl-fuzz  -T waflgo-libxml2 -t 1000+ -m none -z exp -c 45m -q 1 -i /home/waflgo-libxml2/fuzz/in -o /home/waflgo-libxml2/fuzz/out -- ./xmllint.ci --valid --dtdattr --stream @@