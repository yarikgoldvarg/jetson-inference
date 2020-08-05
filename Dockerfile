FROM nvcr.io/nvidia/l4t-ml:r32.4.3-py3
RUN apt update && apt install -y sudo


# 
# setup environment
#
ENV DEBIAN_FRONTEND=noninteractive
ENV CUDA_HOME="/usr/local/cuda"
ENV PATH="/usr/local/cuda/bin:${PATH}"
ENV LD_LIBRARY_PATH="/usr/local/cuda/lib64:${LD_LIBRARY_PATH}"
ENV LLVM_CONFIG="/usr/bin/llvm-config-9"
ARG MAKEFLAGS=-j6

RUN printenv


RUN mkdir install
WORKDIR /install
RUN git clone --recursive https://github.com/yarikgoldvarg/jetson-inference.git
RUN chmod -R +x /install/jetson-inference
RUN mkdir build
WORKDIR /install/jetson-inference/build
RUN cmake ../
RUN make -j$(nproc)
RUN sudo make install
RUN sudo ldconfig
WORKDIR /
