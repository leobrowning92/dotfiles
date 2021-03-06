### snippet for batch renaming files


    rename -v -n 's/(SNT083)_(.[^_]+)_(.[^_]+)_(\d{4}_\d{2}_\d{2}_\d{4})_(.+).csv/$1_$2_$3_$5_$4.csv/' SNT083*
this renames all files starting with 'SNT083' the regex expression for renaming is `'s/stringtomatch/stringtoreplace/'` if one wantedto simply replace the first 1-3 digit numbers with the letter x this might look like `'s/\d{1,3}/x/'`. however if one wanted to replace *all* numbers with *exactly* 3 digits the expression would be `'s/\d{3}/x/g'`

the `'s/(.+)_(.+)/$2_$1/'` breaks a string into two parts if it is divided by a '\_' character .
elements of this expression include

- the `-n` flag tells you what the output of renaming would be, but doesnt *do* it. verry useful.
- `(abc..)` makes a group for recalling later with `$1` , `$2` etc.
- `*` matches the proceeding element 0 or more times, and `+` is the same, but 1 or more times. `{n,m}` matches the preceeding element at least *n* and not more than *m* times
- `[abc..]` matches whatever characters are in the brackets while `[^abc..]` matches all characters except those in the brackets
- `\d` looks for digits
- the g flag is a global search ie. `/x/g` would search for all instances of x


For snippets involving any regex, this is a great little helper called [regexr.com](http://regexr.com/)

for padding zeros in a filename use:

    rename -v -e 's/(.*)#(\d{1,2})\@1.csv/sprintf("SNT090_run%02d_%s.csv", $2,$1)/e' *
with an example output of:

    0-3 Vsweep#22@1.csv renamed as SNT090_run22_0-3 Vsweep.csv    




### bash timestamp bits
    date +%s%N | cut -b1-13
gives the current epoch with millisecconds

### making executables
make a system link to ~/.local/bin/ to put the executable on the path.

    ln -s path/to/script ~/.local/bin/nameoffunction

make sure that there is a shebang in the file header to indicate what
compiler to use. for python use `#!/usr/bin/env python3` for bash `#!/bin/bash`

finally make the script executable by using

    chmod +x script

then you can just use nameoffunction from command wherever you want
