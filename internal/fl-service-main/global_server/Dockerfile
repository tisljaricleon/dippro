
FROM --platform=linux/arm64 python:3.10-slim-bookworm

WORKDIR /home

COPY requirements.txt /home/
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir --extra-index-url https://download.pytorch.org/whl/cpu -r requirements.txt

# Clean up build tools if not needed at runtime
RUN apt-get purge -y build-essential && apt-get autoremove -y

COPY global_server.py /home/

ENV HF_DATASETS_CACHE=/root/.cache/huggingface/datasets

#COPY uoft-cs___cifar10 /root/.cache/huggingface/datasets/uoft-cs___cifar10
COPY data /home/data

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["python", "global_server.py"]

