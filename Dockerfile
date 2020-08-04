FROM nvcr.io/nvidia/l4t-ml:r32.4.3-py3
RUN apt update && apt install -y sudo

RUN mkdir install
WORKDIR /install
RUN git clone --recursive https://github.com/yarikgoldvarg/jetson-inference.git
RUN chmod -R +x /install/jetson-inference
WORKDIR /install/jetson-inference
RUN ./build.sh
WORKDIR /
