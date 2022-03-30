FROM python:3.8@sha256:0fb3f0d2eda29c1c47000692d8a1ec3b6ba08ab451bab6191341dd8eb06531f6
RUN apt update; apt install -y curl jq build-essential
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 PYTHONUNBUFFERED=1
COPY miner_docker /miner_docker
WORKDIR /miner_docker
RUN chmod -R 777 /miner_docker
CMD ["python", "/miner_docker/main.py"]