# MacCaml & WinCaml Downloaders

## What is it ?

This is just 2 scripts to download and setup properly [MacCaml](https://jean-mouric.pagesperso-orange.fr/index.html#MacCaml) and [WinCaml](https://jean-mouric.pagesperso-orange.fr/index.html#binaires) on MacOS to code in OCaml.

## Usage

 - Clone this repository
```bash
git clone https://github.com/LopsemPyier/OCamlDownloader
cd OCamlDownloader
```
 - Give execution rights with this command : 
 ```bash
 chmod +x maccaml.sh wincaml.sh
 ```
 - Execute the script that you want
 ```bash
 ./maccaml.sh # to install MacCaml
 ./wincaml.sh # to install WinCaml
 ```
 
 ## Notes
 
 There is a third script in here to take the ocaml binary that was install with MacCaml (which is version 4.13 as I am writing this) and configure WinCaml to use it (because it ship with version 4.08)
 
 **You must have run the 2 others scripts before doing it.**
 
 ```bash
 chmod +x change_wincaml_ocaml_version_to_maccaml_one.sh
 ./change_wincaml_ocaml_version_to_maccaml_one.sh
 ```
 
 The `clean.sh` script is mostly for testing purposes so only run it if you know what you are doing.
