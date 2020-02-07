# Script to remove duplicates & sort every .txt files located in the /data/ folder and its subdirectories

while IFS= read -r -d '' file; do
    # single filename is in $file
    printf "$file\n"
    sort -u $file > "$file+2"
    mv -f "$file+2" "$file"
done < <(find . -name "*.txt" -print0)
