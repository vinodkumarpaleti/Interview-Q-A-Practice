# Shell script for copy recursively with the extension of ".zip"

#! /bin/bash
#source directory where .zip files are located
source_dir="path/to/source/directory"
dest_dir="path/to/dest"
find "$source_dir" -type f -name "*.zip" -print0 | while IFS=read -r -d " zip_file;
do                                                   