FROM nvcr.io/nvidia/l4t-ml:r32.4.3-py3
RUN apt update && apt install -y sudo

# RUN mkdir install
# WORKDIR /install
# COPY . .
# RUN chmod -R +x /install
# RUN ./build.sh
# WORKDIR /
