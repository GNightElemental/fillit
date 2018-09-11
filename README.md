# Fillit

A project for 42. Find the smallest square that given tetronimos (tetris pieces) fit in to.
Fillit is a project that lets you discover and/or familiarize yourself with a recurring
problematic in programming: searching the optimal solution among a huge set of possibilities,
in a respectable timing. In this particular project, you will have to find a way to
assemble a given Tetriminos set altogether in the smallest possible square.

### Installing

The code was written in C, on Mac OSX.
To run the code:

```
git clone https://github.com/sjuery/Fillit.git fillit
cd fillit
Make
```

The type of file the program takes is a simple TxT file, with 4x4 Tetriminos pieces seperated by a new line.
Check the sample_files folder for some examples

## Running the program

To run the program:

```
./Fillit valid_sample
```

Below is an example of a valid input:
Keep in mind that the larger the input file the longer it will take for the program to finish

```
cat -e valid_sample
...#$
...#$
...#$
...#$
$
....$
....$
....$
####$
$
.###$
...#$
....$
....$
$
....$
..##$
.##.$
....$
$
....$
.##.$
.##.$
....$
```

### Expected output

In this case, the program goes through the smallest possible square (2x2), and checks if piece a fits. If it dosen't it expands the square to 3x3, and checks if it fits. This goes on until all pieces managed to fit into the smallest square possible. Each piece is labelled with a letter of the Alphabet. Piece 1 is A, piece 2 is B...

```
./fillit fillit_file             
ABBBB
ACCC.
A..C.
ADDEE
DD.EE
```

## Authors
* **Stanislas Juery** - *Author* - (https://github.com/sjuery/)
* **RJ Hallsted** - *Project Partner* - (https://github.com/rjhallsted/)
