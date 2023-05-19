cd stdin_parser/
GOARCH=amd64 GOOS=linux   go build main.go && mv main     stdin_parser_linux_x86_64
GOARCH=amd64 GOOS=windows go build main.go && mv main.exe stdin_parser_windows_x86_64.exe
cd ../

tar -czvf stdin_parser_linux_x86_64.tar.gz stdin_parser/stdin_parser_linux_x86_64
zip       stdin_parser_windows_x86_64.zip  stdin_parser/stdin_parser_windows_x86_64.exe

mv stdin_parser_linux_x86_64.tar.gz binaries/
mv stdin_parser_windows_x86_64.zip  binaries/

rm -fr stdin_parser/stdin_parser_linux_x86_64 stdin_parser/stdin_parser_windows_x86_64.exe