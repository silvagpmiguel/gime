# `gime` - Give me something usefull

A simple bash command line program to **display/store/delete** data that the user does not want to forget.
This program uses an **sqlite** database to store the information efficiently. The user can store information and associate it with a label. After the information is stored, the user can search or delete (case sensitive or insensitive):
- All the data
- Data that contains `keyword`
- Data associated with a `label`
- Data that contains `label`
- Data that contains a `keyword` and that contains or is associated with a `label`

*Note: The saved data must be unique per (keyword, label)*
## Installation
```bash
curl -sL https://raw.githubusercontent.com/silvagpmiguel/gime/main/install.sh | sudo bash
```

## Usage
```
Usage: gime <command> [flags] - Display/Store/Delete data associated with a label.
Available Commands & Flags
help                    Help about any command
save <LABEL> <DATA>     Save <DATA> along with <LABEL>
[LABEL]                 Display mode (label not mandatory)
    <LABEL>                         Display data associated with <LABEL>
    -a      --all                   Display all data
    -c      --contains <KEYWORD>    Display if data contains <KEYWORD>
    -cl     --contains-label        Display if data contains <LABEL>
    -i      --insensitive           Set case insensitive
delete [LABEL]          Delete mode (label not mandatory)
    <LABEL>                         Delete data associated with <LABEL>
    -a      --all                   Delete all data
    -c      --contains <KEYWORD>    Delete if data contains <KEYWORD>
    -cl     --contains-label        Delete if data contains <LABEL>
    -i      --insensitive           Set case insensitive
check-for-update        Check if program has any update available
update                  Updade program
uninstall               Uninstall program
```
