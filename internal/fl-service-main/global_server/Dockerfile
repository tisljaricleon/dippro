FROM --platform=linux/arm64 python:3.10-slim-bookworm

WORKDIR /home

# Install system dependencies needed for PyTorch and common Python packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libopenblas-dev \
    libblas-dev \
    liblapack-dev \
    libjpeg-dev \
    libpng-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --upgrade pip

# Copy only requirements first for better caching
COPY requirements.txt /home/
RUN pip install --no-cache-dir -r requirements.txt

# Clean up build tools if not needed at runtime
RUN apt-get purge -y build-essential && apt-get autoremove -y

# Copy your application code and data
COPY global_server.py /home/
COPY data /home/data

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

ENTRYPOINT ["python", "global_server.py"]