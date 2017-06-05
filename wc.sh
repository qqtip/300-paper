#!/bin/sh
TEMPFILE=".temp_wordcount.tex"

echo "\documentclass[12pt]{article}
\\\begin{document}
\input{sections/05_analysis/se_code_applies}
\input{sections/05_analysis/principle_2}
\input{sections/05_analysis/principle_7}
\end{document}" > $TEMPFILE

texcount -inc -total $TEMPFILE

rm $TEMPFILE
