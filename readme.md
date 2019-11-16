docker-phpcs
============

Run PHP Mess Detector (phpcs) in Docker container


Build
--------------------

Build from `Dockerfile`:

```sh
docker build -t fredericomartini/phpcs .
```

Verify build:

```sh
docker run --rm -it fredericomartini/phpcs --version
```

Usage
--------------------

1. Install the `fredericomartini/phpcs` container (optional - this step is performed by Docker automatically when running the container):

```sh
$ docker pull fredericomartini/phpcs
```

2. Define an bash alias that runs this container whenever `phpcs` is invoked on the command line:

```sh
$ echo "alias phpcs='docker run --rm -it -v \$(pwd):/app fredericomartini/phpcs'" >> ~/.bashrc
$ source ~/.bashrc
```

3. Run phpcs as always:

```sh
$ phpcs --version
```