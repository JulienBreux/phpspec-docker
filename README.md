# PHPSpec Docker Container

[![Docker pull](https://img.shields.io/docker/pulls/phpspec/phpspec.svg)](https://hub.docker.com/r/phpspec/phpspec/) [![Docker pull](https://img.shields.io/docker/stars/phpspec/phpspec.svg)](https://hub.docker.com/r/phpspec/phpspec/) [![Github issues](https://img.shields.io/github/issues/JulienBreux/phpspec-docker.svg)](https://github.com/JulienBreux/phpspec-docker/issues) [![License](https://img.shields.io/github/license/JulienBreux/phpspec-docker.svg)](https://github.com/JulienBreux/phpspec-docker/blob/master/LICENSE)


[Docker](https://www.docker.com) container to install and run [PHPSpec](https://www.phpspec.net/).

## Features

* [PHPSpec](https://www.phpspec.net/)
  * Latest snapshot (master)
  * [`2.2.1`](https://github.com/phpspec/phpspec/blob/2.2.1/CHANGES.md#221--2015-05-30)
  * [`2.1`](https://github.com/phpspec/phpspec/blob/2.1.0/CHANGES.md#210--2014-12-14)
* [PHP](https://php.net) [5.6](https://php.net/ChangeLog-5.php)

## Installation / Usage

1. Install the phpspec/phpspec container:

    ``` sh
	$ docker pull phpspec/phpspec
	```

2. Create a phpspec.yml defining your spec suites.

    ``` yml
	suites:
		acme_suite:
	    	namespace: Acme\Text
    		psr4_prefix: Acme\Text
    ```

3. Run PHPSpec through the PHPSpec container:

    ``` sh
	$ docker run -v $(pwd):/app phpspec/phpspec run
    ```

To run, test and develop the PHPSpec Dockerfile itself, you must use the source directly:

1. Download the source:

    ``` sh
	$ git clone https://github.com/JulienBreux/phpspec-docker.git
    ```

2. Switch to the phpspec-docker directory:

    ``` sh
	$ cd phpspec-docker
    ```

3. Build the container:

    ``` sh
	$ docker build -t phpspec/phpspec .
    ```

4. Test running the container:

    ``` sh
	$ docker run phpspec/phpspec help
	```
