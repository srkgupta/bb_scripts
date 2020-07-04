file=/tmp/$1-urls.txt
waybackurls $1 > $file
gau $1 >> $file
cat $file | sort | uniq | grep -v ':80' | grep '?' | grep -e 'https' -e $1 | grep -v -e js -e css -e woff -e eot -e svg -e ttf -e gif -e jpg -e png -e otf| qsreplace -a | uniq