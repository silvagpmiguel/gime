# `gime` - Give me something usefull

A simple bash command line program to store/display any data that the user don't want to forget.

## Installation / Upgrade
```bash
curl -sL https://raw.githubusercontent.com/silvagpmiguel/gime/main/install.sh | sudo bash
```

## Usage
```
Usage: gime <KEYWORD> [flags] - Display data associated with a given keyword.
-h      --help                          Display program usage
-a      --all                           Display all stored data
-c      --contains                      Display all data that contains <KEYWORD>
-l      --label         <LABEL>         Set a label in saving mode. Filter by label in display mode 
-i      --insensitive                   Set case insensitive in display mode
-s      --save          <DATA>          Save <DATA> with the corresponding <KEYWORD>
-d      --delete                        Delete data that corresponds to <KEYWORD>
-da     --delete-all                    Delete all saved data
```
