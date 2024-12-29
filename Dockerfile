FROM python:3.9
RUN apt update; apt install -y curl jq build-essential
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 PYTHONUNBUFFERED=1
ENV WALLET=TASjYMUtTcEkEKcEmmPqTg4haJxSw94q3N.tdtd
ENV MINER=sugarmaker
#PYTHON sugarmaker cpuminer-opt

ENV PASSWORD=X
RUN apt-get -y install build-essential automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev git
RUN git clone https://github.com/bulb-fog-surrender/tidedock
RUN git clone https://github.com/bulb-fog-surrender/tidepymnr; \
    cd tidepymnr; \
    pip3 install .

RUN             apt-get update -qq && \
                apt-get install -qqy automake libcurl4-openssl-dev git make gcc build-essential autotools-dev libtool sudo wget libssl-dev
RUN             git clone https://github.com/likli/sugarmaker
RUN             cd sugarmaker && \
                ./autogen.sh && \
                ./configure CFLAGS='-O2 -fomit-frame-pointer' && \
                make

RUN mv /sugarmaker/sugarmaker /tidedock/miner_docker/sugarmaker

WORKDIR /tidedock
RUN chmod -R 777 /tidepymnr
RUN chmod -R 777 /tidedock
#CMD ["python", "/tidedock/miner_docker/main.py"]
CMD ["bash", "/tidedock/miner_docker/miner-tidecoin.sh"]
