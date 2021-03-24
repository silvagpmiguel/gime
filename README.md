# `gime` - Give me the labeled data

A simple bash command line program to **display** data that the user does not want to forget, like: notes, reminders, passwords, usernames, etc.
With `gime`, users can **store** their data, associating it with a label. Then, they can **display/delete**:
- All the data
- Data that contains `keyword`
- Data associated with a `label`
- Data that contains `label`
- Data that contains a `keyword` and that contains or is associated with a `label`

## Installation
```bash
curl -sL https://raw.githubusercontent.com/silvagpmiguel/gime/main/install | sudo bash
```

## Update
```bash
gime update
```
## Uninstall
```bash
gime uninstall
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
    -c      --contains <KEYWORD>    Delete if data contains <KEYWORD>1
    -cl     --contains-label        Delete if data contains <LABEL>
    -i      --insensitive           Set case insensitive
check-for-update        Check if program has any update available
update                  Updade program
uninstall               Uninstall program
```

## Examples

### Save data (basic usage)
`gime save "label" "data"`
### Display/Delete data by label (basic usage)
`gime "label"` / `gime delete "label"`

### Display/Delete any data that contains label
`gime "label" --contains-label` / `gime delete "label" --contains-label`

### Display/Delete any data that contains a keyword
`gime --contains "keyword"` / `gime delete --contains "keyword"` 
### Display/Delete data that contains a *keyword* and that has a *label*
`gime "label" --contains "keyword"` / `gime delete "label" --contains "keyword"` 

### Save data with multiple labels
`gime save "label1,label2,label3" "data"`