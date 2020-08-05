
## Host

```

$ git clone --recursive https://github.com/yarikgoldvarg/jetson-inference.git

$ cd jetson-inference

$ docker build  . -t jetson-inference:latest

$ docker tag jetson-inference:latest yarikgold/jetson-inference:base

$ docker login

$ docker push yarikgold/jetson-inference:base

$ docker run -it --runtime nvidia --network host --name jetson-inference yarikgold/jetson-inference:base

```



## Container
