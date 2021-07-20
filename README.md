Docker image for DaisyDiff
==========================

[DaisyDiff](https://github.com/DaisyDiff/DaisyDiff) is one of the oldest HTML
diffing solutions. It's sometimes helpful to consult its output, but running it
requires compiling Java source, in legacy version of Java. This Docker image
makes running DaisyDiff for evaluation purposes a little easier.

Build or pull the image:

```console
docker pull ombu/daisydiff
docker build . -t ombu/daisydiff
```

Compare HTML from two URIs:

```console
docker run ombu/daisydiff https://documenta https://documentb
```

This command will print the diff to standard output.

To write the diff to a file, share a folder with the container:

```console
docker run -v $PWD:/tmp/run ombu/daisydiff https://documentA https://documentB
```

This command will write the output file as well the supporting CSS, JS and
images to `out/daisydiff.htm`.

Similarly, to compare HTML from local documents:

```console
docker run -v $PWD:/tmp/run ombu/daisydiff local/documentA.html local/documentB.html
```
