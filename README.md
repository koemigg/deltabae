# Deltabae: Delta Diff to HTML

### Requirements

- [delta](https://github.com/dandavison/delta)
- [ansifilter](https://github.com/andre-simon/ansifilter)

### 1liner cmd

```
mkdir -p ./tmp && delta ./a.txt ./b.txt | ansifilter --html --encoding "utf-8" --style-ref ./style.css > ./tmp/diff.html
```
