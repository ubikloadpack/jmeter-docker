# Apache JMeter on docker

## Building the image
* Place the entrypoint.sh file in the same folder as the Dockerfile
* Run the command : "docker build -t jmeter ." from the folder where the Dockerfile is located
The command accept three arguments to parametrize the image:
    * JAVA_VERSION:
The tag to use as the base image. All available tags are here : https://github.com/AdoptOpenJDK/openjdk8-binaries
    * JMETER_VERSION:
The version of Apache JMeter you wish to add to the image
    * MIRROR:
The mirror link to download Apache JMeter

### Example of a build command:
>docker build --build-args JAVA_VERSION="jdk8u222-b10" JMETER_VERSION="5.1.1" -t jmeter .

## Using the image
* Update the docker-compose.yml to set up the volume where the Apache JMeter Test Case is stored
* Finally personalize and run the attached bash script to run your tests
