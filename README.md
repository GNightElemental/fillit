# Fillit
A project for 42. Find the smallest square that given tetronimos (tetris pieces) fit in to.

Fillit is a project that lets you discover and/or familiarize yourself with a recurring
problematic in programming: searching the optimal solution among a huge set of possibilities,
in a respectable timing. In this particular project, you will have to find a way to
assemble a given Tetriminos set altogether in the smallest possible square.

During this project, we went for backtracking, allowing us to get a correct sollution at a reasonable speed.

To compile just:
```
Make
./Fillit [FileName.Fillit]
```

A fillit file consists of valid Tetriminos, seperated by a new line:
```
cat -e valid_sample.fillit
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
```
In this case the output should look something like this:
```
ABBBB
ACCC.
A..C.
ADD..
DD...
```
Because this is using backtracking, the more the Tetriminos, the longer it will take to find the smallest square.
