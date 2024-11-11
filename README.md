# Hello world whit java
## Results
<p align="center">
    <img src="./public/img/helloJava.png" alt="Hello from javascript">
</p>

It is a program that use SpringBoot for deploy a basic web server and presents a typical hello world message

## :open_book: How to use
* Clone the repository

    ```
    git clone https://github.com/Pablo-man/java_docker_project.git
    ```
> [!NOTE]
> Because the application is made up of statistical files, these must be served on a web server, so the VSCode code editor will be used together with the live server extension in this example.

* Once the project has been cloned, you must open it with the VSCode code editor with the Live Server extension previously installed

* Inside the editor, open the index.html file and press the button corresponding to the mentioned extension, which is located in the lower right area of ​​the editor window

    ![LiveServerIconStart](./public/img/liverServer.png "Deploy page")

## :rocket: How to run in docker
### Pre-requisites
* Docker - DockerDesktop installed
* DockerHub account
### Download image
```
docker pull pamendeza/hellojavascript
```
> [!IMPORTANT]
> By default, the port mapping of 80 that belongs to the nginx server is placed with 8080 corresponding to the computer. If it is required to deploy it on a different port, only 8080 must be modified for another desired port.
### Run image
```
docker run --name <NEWCONTAINERNAME> -d -p 8080:80 <IMAGENAME>
```
> [!TIP]
> The name of the downloaded image must match the one placed in the previous command, for this you can verify it using the **docker images** command. Additionally, you must check that there is no other container with the same name as the one placed in the command.
### View the results
Open new window browser and search localhost:8080

[View results](#results)

## :light_rail: PAAS Deploy with docker (Railway)
For its deployment in a PAAS we will rely on railway and its easy implementation thanks to its container management. 

![Railway Service](./public/img/railwayDeploy.png "Service")

The platform automatically uses our Dockerfile to build the container. 

![Build Container](./public/img/dockerFile.png "Build Configuration")

> [!IMPORTANT]
> Next, the configuration that we must add is the generation of a domain along with the desired port, in this case the indicated thing would be to point to port 80 on which nginx is working

![Generate Domain](./public/img/domain.png "Domain")

[Hello World](https://jsproyectdocker-production.up.railway.app "click for visit")