git clone --depth 1 https://github.com/nim-lang/csources.git;

git fetch --all --tags --prune; \
#git checkout tags/v0.17.2 -b v0.17.2; \

cd csources/ && sh build.sh && cd ..
bin/nim c koch;
./koch boot -d:release
./koch tools;
