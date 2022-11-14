                                                                                       
DATA="<Path/to/STR/analysis>"
CFG="<Path/to/STR/analysis>/ConfigFile.cfg"

rm -rf $CFG

for html in $DATA/*.html;do
        SID=$(basename $html | sed 's/.fa*.align.divsum.html//')
        python ./repeatMaskerHtml2R.py --ht $html --O ${html}_R.tsv
        echo -e "${SID}\t${html}_R.tsv" >> $CFG
done

Rscript plotREP.R $CFG ${CFG}.svg
