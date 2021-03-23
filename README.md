# `gime` - Give me something usefull

A simple bash command line program to **display/store** data that the user does not want to forget.
This program uses an **sqlite** database to store the information efficiently. The user can store information and associate it with a `keyword` and/or also a `label` (not mandatory). After the information is stored, the user can search or delete (case sensitive or insensitive):
- All the data
- Data associated with a `keyword`
- Data that contains `keyword`
- Data associated with a `label`
- Data that contains `label`
- Data that contains or is associated with a `keyword` and that contains or is associated with a `label`

*Note: The saved data must be unique per (keyword, label)*
## Installation / Upgrade
```bash
curl -sL https://raw.githubusercontent.com/silvagpmiguel/gime/main/install.sh | sudo bash
```

## Usage
```
Usage: gime <KEYWORD> [flags] - Display/Store data associated with a keyword and/or with a label.
-h      --help                          Display program usage
-a      --all                           Display all stored data
-ck     --contains-keyword              Display data that contains <KEYWORD>
-cl     --contains-label                Display data that contains <LABEL>
-l      --label         <LABEL>         Set a <LABEL> in saving mode. Filter by <LABEL> in display mode 
-i      --insensitive                   Set case insensitive in display mode
-s      --save          <DATA>          Save <DATA> along with <KEYWORD> and <LABEL> (if exists)
-d      --delete                        Delete <DATA> that matches the <KEYWORD> and <LABEL> (if exists)
-da     --delete-all                    Delete all saved data
```
