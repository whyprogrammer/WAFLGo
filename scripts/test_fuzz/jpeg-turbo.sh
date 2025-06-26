git clone https://github.com/libjpeg-turbo/libjpeg-turbo.git /home/waflgo-libjpeg
cd /home/waflgo-libjpeg; git checkout 88ae609 
export ADD="-g --notI "
export CC=/home/WAFLGo/afl-clang-fast CXX=/home/WAFLGo/afl-clang-fast++  CFLAGS="$ADD" CXXFLAGS="$ADD"
export AFL_CC=gclang AFL_CXX=gclang++
cmake . 
make clean;make -j $(nproc) 
unset AFL_CC AFL_CXX
cp ./cjpeg-static ./
get-bc cjpeg-static 
mkdir fuzz; cd fuzz
cp ../cjpeg-static.bc .

echo $'' > $TMP_DIR/BBtargets.txt
git diff HEAD^1 HEAD > ./commit.diff
cp /home/showlinenum.awk ./
sed -i -e 's/\r$//' showlinenum.awk
chmod +x showlinenum.awk
cat ./commit.diff |  ./showlinenum.awk show_header=0 path=1 | grep -e "\.[ch]:[0-9]*:+" -e "\.cpp:[0-9]*:+" -e "\.cc:[0-9]*:+" | cut -d+ -f1 | rev | cut -c2- | rev > ./targets
/home/WAFLGo/instrument/bin/cbi --targets=targets cjpeg-static.bc --stats=false
cp ./targets_id.txt /home
cp ./suffix.txt /home
cp ./targets*.txt /home
cp ./distance.txt /home
cp ./branch-distance.txt /home
cp ./branch-distance-min.txt /home
cp ./branch-curloc.txt /home
cp ./*_data.txt /home
/home/WAFLGo/afl-clang-fast++ cjpeg-static.ci.bc  -lstdc++  -o cjpeg-static.ci
cp ./bbinfo-fast.txt /home/bbinfo-ci-bc.txt
cp ./branch-distance-order.txt /home
cp ./*-distance-order.txt /home
cp ./*-order.txt /home

/home/WAFLGo/afl-fuzz  -T waflgo-libjpeg -t 1000+ -m none -z exp -c 45m -q 1 -i /home/jpg -o /home/out -- /home/waflgo-libjpeg/fuzz/cjpeg-static.ci  @@