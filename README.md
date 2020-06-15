How to use:

Go into the brain_predict.sh and edit the variables to fit your current filesystem.

$GTEXLIST= "path/to/files/containing/your/databasefiles/*.db"     <---Keep the forward slash and wildcard .db

g="${f:X}"   <----- Edit accordingly to fit the wildcard ^

For the command Predict.py: edit as necessary.

t.awk file needs to be in the same folder as brain_predict.sh.


To change which genees are extracted, edit the variables listed here: cols=ENS00000XXXX, ENS0000000YYYYY, ....
