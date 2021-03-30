# `gime` - Give me the labeled data

A simple bash command line program to **display** data that the user does not want to forget, like: notes, reminders, passwords, usernames, etc.
With `gime`, users can **store** their data, associating it with one or multiple labels. Then, they can **display/delete**:
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
[LABELS]                Display mode (labels not mandatory)
    <LABEL>                         Display if there are rows that contain this <LABEL> 
    <LABEL1,LABEL2,...>             Display if there is a label that has a subset of <LABEL1,LABEL2,...>
    -a      --all                   Display all existing data
    -c      --contains <KEYWORD>    Display if there are rows that the data contains <KEYWORD>
    -cl     --contains-label        Display if there are rows where the label contains [LABELS]
    -i      --insensitive           Set case insensitive
    -d      --detailed              Set detailed mode, where label and data is shown
    -e      --equals                Set equals mode, where data is only displayed if label equals [LABELS]
delete [LABELS]                     Delete mode (labels not mandatory)
    <LABEL>                         Delete if there are rows that contain this <LABEL>
    <LABEL1,LABEL2,...>             Delete if there is a label that has a subset of <LABEL1,LABEL2,...>
    -a      --all                   Delete all existing data
    -c      --contains <KEYWORD>    Delete if there are rows that the data contains <KEYWORD>
    -cl     --contains-label        Delete if there are rows where the label contains [LABELS]
    -i      --insensitive           Set case insensitive
    -e      --equals                Set equals mode, where data is only deleted if label equals [LABELS]
labels                  Display all unique existing labels
check-for-update        Check if program has any update available
update                  Update program
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