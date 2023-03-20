# and select the 10k lines of each file in cdi only

mkdir -p top10k top2k

for file in $(ls *csv); do 
    echo $file
    filename=${file%.csv}
    head -n 10001 $file > top10k/${filename}_10k.csv
    head -n 2001 $file > top2k/${filename}_2k.csv
done
