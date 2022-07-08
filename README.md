
# Pig Latin

MIPS assembly Program Pig Latin, The function expects a buffer containing whitespace separated "words" in all lower case. It processes one word at a time, writing the translation into the ~pig_latin_buffer~.

If a "word" does not contain a vowel at all, the provided translate function will, most likely, fail. There is to error testing for this case.



## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
brew install gcc
```

### Installing

A step by step series of examples that tell you how to get a development env running

Say what the step will be

```
git clone https://github.com/XiaoSanchez/Mips-Assembly-Pig-Latin.git
```

And repeat

```
cd Mips-Assembly-Pig-Latin
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

If the directories where runtest and expect were installed are not in the PATH, you may need to set the following environment variables appropriately, as in the following example (which assumes that DejaGnu has been installed under /usr/local):

### Break down into end to end tests

On systems such as Cygwin, these paths are required to be actual paths, not mounts or links; presumably this is due to some lack of portability in the DejaGnu code.

```
TCL_LIBRARY = /usr/local/share/tcl8.0
DEJAGNULIBS = /usr/local/share/dejagnu
```

### And coding style tests

Run the testsuite (which may take a long time):

```
cd objdir; make -k check
```

## Deployment

Add additional notes about how to deploy this on a live system.

## Built With

* [Mips Assembly](https://www.cs.unibo.it/~solmi/teaching/arch_2002-2003/AssemblyLanguageProgDoc.pdf)

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to me.

## Versioning

I use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Shawn Cai** - *Initial work* - [XiaoSanchez](https://github.com/XiaoSanchez)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc
