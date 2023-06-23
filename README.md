# Deltabae: Delta Diff to HTML

Deltabae is a command line tool that generates a side-by-side, colored HTML diff of two text files using [delta](https://github.com/dandavison/delta) and [ansifilter](http://www.andre-simon.de/doku/ansifilter/ansifilter.php).

## Requirements

To use Deltabae, you'll need to have both delta and ansifilter installed.

- [delta](https://github.com/dandavison/delta)
- [ansifilter](https://github.com/andre-simon/ansifilter)

## Usage

You can use Deltabae by providing the names of the two files you want to compare. Here's a basic example:

```zsh
deltabae.sh -f your_first_file -s your_second_file
```

This will generate a file named `diff.html` in the `./tmp` directory.

## Command Line Options

Deltabae accepts the following command line options:

- `-f` : Specifies the first file to compare (required).
- `-s` : Specifies the second file to compare (required).
- `-o` : Specifies the directory where the HTML output should be saved. If the directory doesn't exist, it will be created. Default is `./tmp`.
- `-n` : Specifies the name of the output HTML file (without the .html extension). Default is `diff`.

For example, to compare `file1.txt` and `file2.txt`, output the result to the `path/to/my-project/results` directory, and name the output file `my_diff.html`, you would run:

```
`deltabae.sh` -f file1.txt -s file2.txt -o `path/to/my-project/results` -n my_diff
```
