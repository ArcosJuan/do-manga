
#! /bin/bash
for i in */*.zip 
do
	unzip "$(readlink -f "$i")" -d "./$(dirname "$i")/";
done

for d in */
do
	echo "In folder: $d";
	echo "Zips in folder: $(basename --suffix=".zip" "$d"*.zip)";
	read file_name;
	convert ./"$d"*/*.jpg "$file_name.pdf";
done
