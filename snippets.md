### snippet for batch renaming files

    rename -v 's/(SNT083)_(.[^\_]+)_(.[^_]+)_(.+).csv/$1_$2_$4_$3.csv/' SNT083*

this renames all files starting with 'SNT083' the regex expression for renaming is `'s/stringtomatch/stringtoreplace/'` if one wanted to simply replace all 1-3 digit numbers with the letter x this might look like `'s/\d{1,3}/x/'`.

the `'s/(.+)_(.+)/$2_$1/'` breaks a string into two parts if it is divided by a '\_' character .

For snippets involving any regex, this is a great little helper called [regexr.com](http://regexr.com/)
