cd rimgo/
git clone --depth 1 https://codeberg.org/video-prize-ranch/rimgo
cd rimgo/

go mod download
GOARCH=amd64 GOOS=linux go build && mv rimgo ../rimgo_linux_x86_64
GOARCH=amd64 GOOS=windows go build && mv rimgo.exe ../rimgo_windows_x86_64.exe

cd ../../

tar -czvf rimgo_linux_x86_64.tar.gz rimgo/rimgo_linux_x86_64
zip rimgo_windows_x86_64.zip rimgo/rimgo_windows_x86_64.exe

mv rimgo_linux_x86_64.tar.gz binaries/
mv rimgo_windows_x86_64.zip binaries/

rm -fr rimgo/rimgo/ rimgo/rimgo_linux_x86_64 rimgo/rimgo_windows_x86_64.exe