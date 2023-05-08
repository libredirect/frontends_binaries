cd nitter/
git clone --depth 1 https://github.com/zedeus/nitter
cd nitter/

nimble build -d:release --cpu:amd64 --os:linux && mv nitter ../nitter_linux_x86_64
nimble build -d:release --cpu:amd64 -d:mingw && mv nitter.exe ../nitter_windows_x86_64.exe
nimble scss && nimble md && mv public/ ../

cd ../../

tar -czvf nitter_linux_x86_64.tar.gz ./nitter/nitter_linux_x86_64 ./nitter/nitter.conf ./nitter/public
zip nitter_windows_x86_64.zip ./nitter/nitter_windows_x86_64.exe ./nitter/nitter.conf ./nitter/public/*

mv nitter_linux_x86_64.tar.gz binaries/
mv nitter_windows_x86_64.zip binaries/

rm -fr nitter/nitter/ nitter/nitter_linux_x86_64 nitter/nitter_windows_x86_64.exe nitter/public/