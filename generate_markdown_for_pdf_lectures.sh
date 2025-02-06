#!/usr/bin/bash
set -e

folder="./_lectures"
file_identifiers=('makefile')
extensions=('c' 'sh' 'py' 'cpp' 'cu')

create_markdown_file_from_source()
{
    # $1 Folder
    # $2 File
    # $3 Highlighting
    # $4 Exstension

    mdfile="$(basename "$2" .$4).md"
    printf -- "---\nname: \"%s\"\nlayout: page\n---\n\`\`\`%s\n" "$1" "$3" > $folder/$mdfile
    cat $file >> $folder/$mdfile
    printf -- "\n\`\`\`\n" >> $folder/$mdfile
}

create_markdown_file_for_pdf()
{
    entry=$2
    folder=$1
    filename=${entry#"$folder/"}
    filename=${filename%".pdf"}
    printf -- "---\nname: \"%s\"\n---\n<object data=\"./%s.pdf\" width=\"100%%\" height=\"100%%\" type='application/pdf'></object>\n" "$filename" "$filename" > "$1/$filename.md"
}

# Parse pdfs
for entry in "$folder"/*.pdf
do
    create_markdown_file_for_pdf $folder $entry
done


for exstension in ${extensions[@]}
do
    # Put source code to markdown
    for file in $(find $folder -maxdepth 1 -type f '(' -name *.$exstension ')' )
        do
        create_markdown_file_from_source $folder $file $exstension $exstension
        done
done

for identifier in ${file_identifiers[@]}
do
    # Put non-exstension files to markdown
    for file in $(find $folder -maxdepth 1 -type f '(' -iname $identifier ')' )
        do
        create_markdown_file_from_source $folder $file $identifier
        done
done 