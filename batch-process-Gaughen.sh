#! /bin/sh 
for f in "$1"/*; do
  if [ -f "$f" ]; then
    SIZE="$(du -sh "${f}" | cut -f1)"
    WORDS="$(wc -w "${f}" | cut -d ' ' -f1)" #Get word count
    echo "Processing $f file..."
    echo "File size: $SIZE"
    echo "Word count: $WORDS"
    echo
  fi
done

