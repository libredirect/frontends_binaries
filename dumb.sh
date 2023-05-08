cd dumb/
git clone --depth 1 https://github.com/rramiachraf/dumb
cd dumb/

GOARCH=amd64 GOOS=linux go build && mv dumb ../dumb_linux_x86_64
GOARCH=amd64 GOOS=windows go build && mv dumb.exe ../dumb_windows_x86_64.exe
mv views/ ../
mv static/ ../

cd ../../

tar -czvf dumb_linux_x86_64.tar.gz dumb/dumb_linux_x86_64 dumb/views dumb/static
zip dumb_windows_x86_64.zip dumb/dumb_windows_x86_64.exe dumb/views/* dumb/static/*

mv dumb_linux_x86_64.tar.gz binaries/
mv dumb_windows_x86_64.zip binaries/

rm -fr dumb/dumb/ dumb/dumb_linux_x86_64 dumb/dumb_windows_x86_64.exe dumb/views dumb/static