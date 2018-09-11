# Fillit

A project for 42. Find the smallest square that given tetronimos (tetris pieces) fit in to.
Fillit is a project that lets you discover and/or familiarize yourself with a recurring
problematic in programming: searching the optimal solution among a huge set of possibilities,
in a respectable timing. In this particular project, you will have to find a way to
assemble a given Tetriminos set altogether in the smallest possible square.

### Installing

The code was written in C, on Mac OSX.
To run the code simply git clone the file, and Make

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc

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
