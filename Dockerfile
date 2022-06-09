FROM python:3.8
RUN apt update; apt install -y curl jq build-essential
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 PYTHONUNBUFFERED=1
RUN git clone https://github.com/likloadm/tidecoin_miner
WORKDIR /tidecoin_miner
RUN chmod -R 777 /tidecoin_miner
CMD ["python", "/miner_docker/main.py"]