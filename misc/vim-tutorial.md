
# Vim tutorial

## Starting Vim

- `vim` - Launches Vim editor.
- `vim file` - Launches Vim and opens file.
- `vim +n file` - Launches Vim, opens file, moves to line n.
- `vim + file` - Launches Vim, opens file, moves to the last line in file.
- `vimtutor` - Launches vim tutorial.
- `vimdiff file1 file2` - Shows the differences between files.

## Editor modes

- **Editing mode.** - Serves for inserting and modifying text, you can switch to
  this mode by pressing `a`, `i` or `r` in command mode.
- **Command mode.** - Serves for text modification by issuing commands
(usually in form of one or more letter shortcuts). You can switch to this mode
by pressing `esc`.
- **Ex mode.** - You can switch to this mode by pressing `:` in command
  mode.

## Basic commands

- `:w` - Saves file.
- `:q` - Quits editor (does not work if we have unsaved changes).
- `:wq` - Saves file and quits editor.
- `:q!` - Quits editor without saving changes.

## Navigating through text

- `h`, `j`, `k`, `l` - Character left, bottom, up, right. (You can use cursor keys as
  well.)
- `0`, `$` - Move to the begin/end of line. (You can use Home/End as
  well.)
- `%` - If you are on some of characters {}(), jumps for opening/closing
  bracket to the corresponding closing/opening bracket.

## Cut/Paste/Delete

### Parts of lines

- Press `v` to switch to visual mode (serves for selecting text).
- Select text to cut/copy by arrow keys.
- Press `y` for copying it, or `d` for cutting it.
- Move cursor, where you want to paste it and press `p`.

### Whole lines

- `dd` - Cut line to clipboard.
- `yy` - Copy line to clipboard.
- `p` - Paste line from clipboard.

You can select multiple lines by pressing `shift + v` followed by pressing
`up`/`down` arrow.

## Searching

- `/pattern` - Find pattern in forward direction.
- `?pattern` - Find pattern in backward direction.
- `n` - Repeat last search with / or ?.
- `N` - Repeat last search with / or ?, but in the opposite direction.

## Replacing

- `:ranges/searchfor/replacewith/options` - Replaces searchfor with
  replacewith in the given range.

### Ranges

- `.` - The current line.
- `%` - Whole file.

### Regular expressions

- `.` - Any character.
- `*` - 0 or more occurences of previous character.
- `+` - 1 or more ocurrences of previous character.
- `[abcd]` - One character from the given set of characters.
- `[^abcd]` - One character except any character from the given set of
  characters.
- `^` - The begin of line.
- `$` - The end of line.

### Options

- `g` - Replace all ocurrences on line (without this it replaces only the
  first ocurrence on line).
- `c` - Asks for confirmation of each replacement.

## Splitscreen

- `:vsplit file` - Splits window vertically and on the left side opens file.
- `:split file` - Splits window horizontally and on the top side opens file.
- ctrl + w, arrow - Moves into window in direction according to arrow.

## Saving session

- `:mksession path_to_file` - Saves session to file.
- `vim -S path_to_file` - Start Vim with loaded session from file.

## Configuration

- `:set number`/`:set nonumber` - Shows/hides line numbers.
- `:set paste`/`:set nopaste` - Enables/disables paste mode (does not indent
  pasted lines).

