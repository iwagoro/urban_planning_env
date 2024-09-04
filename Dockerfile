FROM python:latest
WORKDIR /app
RUN apt-get update && apt-get install -y sox libsox-fmt-all
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install torch torchvision torchaudio 
