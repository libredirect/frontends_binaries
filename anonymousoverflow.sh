cd anonymousoverflow/
git clone --depth 1 https://github.com/httpjamesm/AnonymousOverflow
cd AnonymousOverflow/


GOARCH=amd64 GOOS=linux go build && mv anonymousoverflow ../anonymousoverflow_linux_x86_64
GOARCH=amd64 GOOS=windows go build && mv anonymousoverflow.exe ../anonymousoverflow_windows_x86_64.exe
mv templates/ ../
mv public/ ../

cd ../../

tar -czvf anonymousoverflow_linux_x86_64.tar.gz anonymousoverflow/anonymousoverflow_linux_x86_64 anonymousoverflow/templates anonymousoverflow/public
zip anonymousoverflow_windows_x86_64.zip anonymousoverflow/anonymousoverflow_windows_x86_64.exe anonymousoverflow/templates/* anonymousoverflow/public/*

mv anonymousoverflow_linux_x86_64.tar.gz binaries/
mv anonymousoverflow_windows_x86_64.zip binaries/

rm -fr anonymousoverflow/AnonymousOverflow/ anonymousoverflow/anonymousoverflow_linux_x86_64 anonymousoverflow/anonymousoverflow_windows_x86_64.exe anonymousoverflow/templates/ anonymousoverflow/public/ 