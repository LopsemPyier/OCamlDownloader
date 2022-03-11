echo "Welcome to MacCaml Downloader\n"
cd /Users/$USER/Downloads
mkdir -p MacCamlDownload
cd MacCamlDownload

echo " > Downloading OCaml..."
curl https://jean-mouric.pagesperso-orange.fr/archives/MacCamlv7.0-swift-intel.dmg -o MacCaml.dmg -#

echo "Done. \n\n > Extracting OCaml..."

hdiutil attach MacCaml.dmg -quiet -nobrowse
filename=MacCamlv7.0-swift-intel
sudo cp -r /Volumes/$filename/amd64 /opt/amd64

# sudo mkdir -p /Library/LaunchAgents
# sudo cp -r /Volumes/$filename/com.jmm.maccamlxpc.plist /Library/LaunchAgents

# sudo xattr -r -d -s com.apple.quarantine /Applications/MacCaml

hdiutil detach /Volumes/$filename -quiet

echo "Done.\n\n > Downloading MacCaml..."
curl https://jean-mouric.pagesperso-orange.fr/archives/MacCamlv7.0-objc-intel.dmg -o MacCaml-obj.dmg -#

echo "Done.\n\n Extracting MacCaml..."
hdiutil attach MacCaml-obj.dmg -quiet -nobrowse
filename=MacCamlv7.0-objc-intel
sudo cp -r /Volumes/$filename/MacCaml.app /Applications/MacCaml.app
hdiutil detach /Volumes/$filename -quiet
echo "Done."

cd ..
rm -r MacCamlDownload

echo "\t\t== MacCaml is successfully installed to your computer =="