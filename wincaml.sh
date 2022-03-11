echo "Welcome to WinCaml Downloader\n"

cd /Users/$USER/Downloads
mkdir -p WinCamlDownload
cd WinCamlDownload

echo " > Downloading WinCaml..."
curl https://jean-mouric.pagesperso-orange.fr/archives/WinCaml7-mac.zip -o WinCaml7-mac.zip -#

echo "Done.\n\n > Extracting WinCaml..."
unzip -q WinCaml7-mac.zip

mv WinCaml7-mac/WinCaml7 /Applications/WinCaml
mv WinCaml7-mac/ocaml-* /Applications/WinCaml/ocaml4

sudo xattr -r -d -s com.apple.quarantine /Applications/WinCaml

mkdir -p /Applications/WinCaml/.$USER
echo "/Applications/WinCaml/ocaml4" > /Applications/WinCaml/.$USER/ocamlbase.txt

echo "Done.\n\n\t\t== WinCaml is successfully install to your computer=="
echo "\nYou may need to switch from Caml Lite to OCaml in the menu bar of WinCaml under the menu CamlTop."