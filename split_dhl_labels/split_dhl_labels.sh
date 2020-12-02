#! /bin/bash

# Creates the output directory in the same directory
outdir=a5
mkdir -p "$outdir"

# Iterates over all pdf files in the directory and removes the first half of the document
for f in *.pdf; do
  echo $f
  mutool poster -y 2 $f "$outdir/$f" 		# split the pages vertically
  mutool clean "$outdir/$f" "$outdir/$f" 1	# keep only the second half
done
