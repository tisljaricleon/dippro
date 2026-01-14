
FROM nvcr.io/nvidia/pytorch:23.11-py3-igpu

WORKDIR /home




COPY requirements.txt /home/
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt



COPY client.py /home/

ENV HF_DATASETS_CACHE=/root/.cache/huggingface/datasets

#COPY uoft-cs___cifar10 /root/.cache/huggingface/datasets/uoft-cs___cifar10
COPY data /home/data

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["python", "client.py"]

