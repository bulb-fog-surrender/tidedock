FROM python:3.8
RUN apt update; apt install -y curl jq build-essential
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 PYTHONUNBUFFERED=1
COPY miner_docker /miner_docker
WORKDIR /miner_docker
RUN chmod -R 777 /miner_docker
CMD ["python", "/miner_docker/main.py"]