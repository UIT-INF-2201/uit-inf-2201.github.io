#!/usr/bin/bash

folder="./_lectures"
for entry in "$folder"/*.pdf
do
    filename=${entry#"$folder/"}
    filename=${filename%".pdf"}
    printf -- "---\nname: \"%s\"\n---\n<object data=\"./%s.pdf\" width=\"100%%\" height=\"100%%\" type='application/pdf'></object>\n" "$filename" "$filename" > "$folder/$filename.md"
done