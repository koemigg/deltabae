mkdir -p ./tmp && delta ./a.txt ./b.txt --side-by-side --syntax-theme="Nord" --zero-style="#333" | ansifilter --html --encoding "utf-8" > ./tmp/diff.html
