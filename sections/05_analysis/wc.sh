#!/bin/sh
TEMPFILE=".temp_wordcount.tex"

echo "\documentclass[12pt]{article}
\\\begin{document}
\input{01_se_code_applies}
\input{principle_2}
\input{principle_7}
\end{document}" > $TEMPFILE

texcount -inc -total $TEMPFILE

rm $TEMPFILE
