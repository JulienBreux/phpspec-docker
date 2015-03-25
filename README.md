# PHPSpec Docker Container

[Docker](https://www.docker.com) container to install and run [PHPSpec](https://www.phpspec.net/).

## Features

* [PHPSpec](https://www.phpspec.net/)
  * Latest snapshot (master)
  * [`2.1`](https://github.com/phpspec/phpspec/blob/2.1.1/CHANGES.md)
* [PHP](http://php.net) [5.6](http://php.net/ChangeLog-5.php)

## Installation / Usage

1. Install the julienbreux/phpspec container:

    ``` sh
	$ docker pull julienbreux/phpspec
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
	$ docker run -v $(pwd):/app julienbreux/phpspec run
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
	$ docker build -t julienbreux/phpspec .
    ```

4. Test running the container:

    ``` sh
	$ docker run julienbreux/phpspec help
	```
