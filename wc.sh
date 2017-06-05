#!/bin/sh
TEMP_FILE=".temp_wordcount.tex"

SC="sections/05_analysis/se_code_applies"
P2="sections/05_analysis/principle_2"
P7="sections/05_analysis/principle_7"
CON="sections/06_conclusion"
ADJ_FILE=".temp_adjustment.tex"

# number of words to add to adjust word count
ADJ_COUNT=37
# create file for word count adjustment
while [ "$ADJ_COUNT" -gt "0" ]; do
    echo "word" >> $ADJ_FILE; ((ADJ_COUNT--))
done

# create temporary tex file
echo "\documentclass[12pt]{article}
\\\begin{document}" >> $TEMP_FILE
for FILE in $SC $P2 $P7 $CON $ADJ_FILE; do
    echo "\input{$FILE}" >> $TEMP_FILE
done
echo "\end{document}" >> $TEMP_FILE

texcount -inc -total $TEMP_FILE
rm $ADJ_FILE $TEMP_FILE