ARG FROM_IMAGE_NAME=pytorch/pytorch:latest
FROM ${FROM_IMAGE_NAME}

RUN apt-get update && apt-get install -y libsndfile1 \
  && apt-get install -y ffmpeg && apt-get install -y sox \
  && apt-get install -y libsm6 libxext6 libxrender-dev \
  && apt-get install -y wget \
  && apt-get install -y autoconf \
  && apt-get install -y libtool \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace/anaconda_dock

# Install jupyter
RUN conda install jupyter

# Install requirements (do this first for better caching)
COPY requirements.txt .
RUN pip install --disable-pip-version-check -U -r requirements.txt



# Copy rest of files
COPY . .
