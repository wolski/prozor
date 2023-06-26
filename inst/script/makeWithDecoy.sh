set -t
echo $1
export R_LIBS_SITE="/scratch/LIBWITHPROZOR/r-site-library/"
Rscript --vanilla $R_LIBS_SITE/prozor/script/fgcz_create_fasta.R $1 --summary -o /srv/www/htdocs/FASTA/
echo "---------"
#echo "$(<$1_d.txt)"
fastastore=$(ls /srv/www/htdocs/FASTA/$1_d*)
cat "$1_d.txt" | bfabric_save_fasta.py $2 $fastastore
set +t

