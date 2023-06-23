# Example Usage

This directory contains examples of how to use the deltabae.sh script in the parent directory.

## Files

- `a.txt`, `b.txt`: Text files to be compared.
- `diff.html` (to be generated): This file will be generated after running the script. It contains the side-by-side diff of `a.txt` and `b.txt` with syntax highlighting.

## Steps to Run the Example

1. Move into this directory: `cd example`
2. Run the deltabae.sh script: `bash ../deltabae.sh -f a.txt -s b.txt`
3. Open the generated `./tmp/diff.html` file in a web browser to view the output.

The `diff.html` file should show the differences between `a.txt` and `b.txt` in a side-by-side format with syntax highlighting.
