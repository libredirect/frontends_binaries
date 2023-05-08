cd libreddit/
git clone --depth 1 https://github.com/libreddit/libreddit

cd libreddit/
cargo build --target x86_64-unknown-linux-gnu --release && mv target/x86_64-unknown-linux-gnu/release/libreddit ../libreddit_linux_x86_64
cargo build --target x86_64-pc-windows-gnu --release && mv target/x86_64-pc-windows-gnu/release/libreddit.exe ../libreddit_windows_x86_64.exe

cd ../../

tar -czvf libreddit_linux_x86_64.tar.gz ./libreddit/libreddit_linux_x86_64
zip libreddit_windows_x86_64.zip ./libreddit/libreddit_windows_x86_64.exe

mv libreddit_linux_x86_64.tar.gz binaries/
mv libreddit_windows_x86_64.zip binaries/

rm -fr libreddit/libreddit/ libreddit/libreddit_linux_x86_64 libreddit/libreddit_windows_x86_64.exe