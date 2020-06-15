GTEXLIST="/home/alden/MetaXcan-master/GTEx-V7_HapMap-2017-11-29-1/*.db" 

for f in $GTEXLIST
do
    g="${f:56}"
    echo "Working on $g"
    /home/alden/MetaXcan-master/software/Predict.py --model_db_path $f --vcf_genotypes /mnt/d/Genetics/GUSTO_INFO08_nodup_noambi_autosomes.vcf --vcf_mode genotyped --prediction_output  /mnt/d/PrediXcan_output/$g-predicted-expression
    awk  -f /home/alden/MetaXcan-master/t.awk -v cols=ENSG00000112038.17,ENSG00000125170.10,ENSG00000114353.16,ENSG00000065135.10,ENSG00000100077.14,ENSG00000162975.4,ENSG00000116329.10,ENSG00000125510.15,ENSG00000101327.8,ENSG00000166888.11,ENSG00000137486.16,ENSG00000078369.17,ENSG00000186469.8,ENSG00000173020.10,ENSG00000181195.10,ENSG00000129219.13,ENSG00000115138.10,ENSG00000116729.13  /mnt/d/PrediXcan_output/$g-predicted-expression > /mnt/d/PrediXcan_output/$g-predicted-expression-filtered.txt
done

