# `ascii85`

`ascii85` is a command-line program for encoding and decoding files using the
[Ascii85](https://en.wikipedia.org/wiki/Ascii85) algorithm. Ascii85 encodes
groups of four bytes using five printable ASCII characters from a set of 85.
[Base64](https://en.wikipedia.org/wiki/Base64) is a similar algorithm which
encodes three bytes with four characters from a 64-character set, resulting in
more overhead. I based `ascii85`'s command syntax on that of Simon Joseffson's
`base64` program from the [GNU coreutils](http://www.gnu.org/software/coreutils/).

`ascii85` is designed to be flexible in what it can decode. The `-i` flag will
cause it to skip invalid characters in an encoded file rather than printing an
error message and halting. The `<~` and `~>` delimiters are also optional; with
the `-n` flag, all input will be interpreted as Ascii85-encoded data without
looking for delimiters.

When a delimited file is being decoded, `ascii85` ignores any characters outside
the delimiters. This means that extra data can be prepended or appended to the
file. For instance, one might want to add checksums or hashes to the end, like
the original [`btoa`](http://en.wikipedia.org/wiki/Ascii85#btoa_version) program.

## Built-in help

```
NAME
        ascii85 - Ascii85 encode/decode data and print to standard output

SYNOPSIS
        ascii85 [OPTION]... [FILE]

DESCRIPTION
        Ascii85 encode or decode FILE, or standard input, to standard output.

        -d, --decode
                decode data (encodes by default)

        -i, --ignore-garbage
                when decoding, ignore invalid characters

        -n, --no-delims
                when encoding, omit delimiters (<~ and ~>), and when decoding,
                do not look for delimiters

        -w, --wrap=COLS
                wrap encoded lines after COLS characters (default 76).  Use 0
                to disable line wrapping.

        -y, --y-abbr
                abbreviates four encoded spaces as 'y'

        -h, --help
                display this help and exit

        With no FILE, or when FILE is -, read standard input.

AUTHOR
        Written by Remy Oukaour <remy.oukaour@gmail.com>.

COPYRIGHT
        Copyright (C) 2012-2014 Remy Oukaour <http://www.remyoukaour.com>.
        MIT License.
        This is free software: you are free to change and redistribute it.
        There is NO WARRANTY, to the extent permitted by law.
```
