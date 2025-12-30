FROM nvcr.io/nvidia/tritonserver:23.08-py3

COPY . /apps

RUN ["/apps/start-triton-server.sh"]
