docker run --gpus all \
  -v $(pwd):/workspace \
  -v /home/${USER}/.cache/huggingface/hub:/root/.cache/huggingface/hub \
  -it --rm nvcr.io/nvidia/pytorch:20.12-py3
