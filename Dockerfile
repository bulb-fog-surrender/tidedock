FROM python:3.9
RUN apt update; apt install -y curl jq build-essential
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8 PYTHONUNBUFFERED=1
ENV WALLET=TSrAZcfyx8EZdzaLjV5ketPwtowgw3WUYw
ENV MINER=sugarmaker
#PYTHON sugarmaker cpuminer-opt

ENV PASSWORD=X
RUN apt-get -y install build-essential automake libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev zlib1g-dev git
RUN git clone https://github.com/likloadm/tidecoin_miner
RUN git clone https://github.com/likloadm/tidepyminer; \
    cd tidepyminer; \
    pip3 install .

RUN             apt-get update -qq && \
                apt-get install -qqy automake libcurl4-openssl-dev git make gcc build-essential autotools-dev libtool sudo wget libssl-dev
RUN             git clone https://github.com/likli/sugarmaker
RUN             cd sugarmaker && \
                ./autogen.sh && \
                ./configure CFLAGS='-O2 -fomit-frame-pointer' && \
                make

RUN mv /sugarmaker/sugarmaker /tidecoin_miner/miner_docker/sugarmaker

WORKDIR /tidecoin_miner
RUN chmod -R 777 /tidepyminer
RUN chmod -R 777 /tidecoin_miner
#CMD ["python", "/tidecoin_miner/miner_docker/main.py"]
CMD ["bash", "/tidecoin_miner/miner_docker/miner-tidecoin.sh"]