cd simplytranslate/
git clone --depth 1 https://codeberg.org/SimpleWeb/SimplyTranslate-Web

cp requirements.txt SimplyTranslate-Web/
cd SimplyTranslate-Web/
pip3 install -r requirements.txt
pyinstaller --name simplytranslate_linux_x86_64  -F main.py --distpath ../ --add-data "templates:templates" --add-data "static:static"

cd ../../

tar -czvf simplytranslate_linux_x86_64.tar.gz ./simplytranslate/simplytranslate_linux_x86_64 ./simplytranslate/config.conf

mv simplytranslate_linux_x86_64.tar.gz binaries/

rm -fr simplytranslate/SimplyTranslate-Web/ simplytranslate/simplytranslate_linux_x86_64