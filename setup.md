# How to build and push jetson-inference container
## Step 1 [Host]

```

$ git clone --recursive https://github.com/yarikgoldvarg/jetson-inference.git

$ cd jetson-inference

$ docker build  . -t jetson-inference:latest

$ docker tag jetson-inference:latest yarikgold/jetson-inference:base

$ docker login

$ docker push yarikgold/jetson-inference:base

$ docker run -it --runtime nvidia --network host --name jetson-inference yarikgold/jetson-inference:base

```



## Step 2 [Container]

```
$ cd install/jetson-inference/
$ sh build.sh
$ exit

```

## Step 3 [Host]

```
$ docker commit $(docker ps -aqf "name=jetson-inference") yarikgold/jetson-inference:latest

$ docker push yarikgold/jetson-inference:latest

```

