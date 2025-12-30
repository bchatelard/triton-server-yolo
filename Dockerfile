FROM nvcr.io/nvidia/tritonserver:23.08-py3

COPY . /apps

WORKDIR /apps

CMD ["/apps/start-triton-server.sh", "--models", "yolov7", "--model_mode", "infer", "--plugin", "efficientNMS", "--opt_batch_size", "4", "--max_batch_size", "4", "--instance_group", "1"]
