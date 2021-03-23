# `gime` - Give me something usefull

A simple bash command line program to store/display any data that the user don't want to forget.

## Installation
```bash
curl -sL https://raw.githubusercontent.com/silvagpmiguel/gime/main/install.sh | sudo bash
```

## Usage
```
Usage: gime <KEYWORD> [flags] - Display data associated with a given keyword.
-h      --help                          Display program usage
-a      --all                           Display all stored data
-f      --filter                        Filter data that contains <KEYWORD>
-fl     --filter-by-label               Filter data that has the label <KEYWORD>
-s      --save          <DATA>          Save <DATA> with the corresponding <KEYWORD>
-l      --label         <LABEL>         Set a label when saving
-d      --delete                        Delete data that corresponds to <KEYWORD>
-da     --delete-all                    Delete all saved data
```