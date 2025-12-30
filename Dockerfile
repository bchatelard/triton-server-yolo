FROM nvcr.io/nvidia/tritonserver:23.08-py3

COPY . /apps

WORKDIR /apps

CMD ["/apps/start-triton-server.sh"]
