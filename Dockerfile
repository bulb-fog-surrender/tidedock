FROM python:3.8
RUN apt update; apt install -y curl jq build-essential
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 PYTHONUNBUFFERED=1
ENV WALLET=TSrAZcfyx8EZdzaLjV5ketPwtowgw3WUYw
ENV MINER=PYTHON
ENV PASSWORD=X
RUN apt-get -y install build-essential automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev git
RUN git clone https://github.com/likloadm/tidecoin_miner
RUN git clone https://github.com/likloadm/tidepyminer; \
    cd tidepyminer; \
    pip install .
WORKDIR /tidecoin_miner
RUN chmod -R 777 /tidepyminer
RUN chmod -R 777 /tidecoin_miner
#CMD ["python", "/tidecoin_miner/miner_docker/main.py"]
CMD ["bash", "/tidecoin_miner/miner_docker/miner-tidecoin.sh"]