
FROM nvcr.io/nvidia/pytorch:23.11-py3-igpu

WORKDIR /home

# Only install what's needed to build Python packages and enable HTTPS
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies (CPU-only PyTorch)
COPY requirements.txt /home/
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Clean up build tools if not needed at runtime
RUN apt-get purge -y build-essential && apt-get autoremove -y

COPY client.py /home/

ENV HF_DATASETS_CACHE=/root/.cache/huggingface/datasets

#COPY uoft-cs___cifar10 /root/.cache/huggingface/datasets/uoft-cs___cifar10
COPY data /home/data

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["python", "client.py"]

