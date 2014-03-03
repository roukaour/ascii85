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
        Copyright (C) 2012-2014 Remy Oukaour. MIT License.
        This is free software: you are free to change and redistribute it.
        There is NO WARRANTY, to the extent permitted by law.
