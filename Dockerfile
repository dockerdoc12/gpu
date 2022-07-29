FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://github.com/trexminer/T-Rex/releases/download/0.24.5/t-rex-0.24.5-linux.tar.gz
RUN tar -xvf t-rex-0.24.5-linux.tar.gz

ENTRYPOINT [ "./t-rex" ]
CMD [ "-a", "ethash", "-o", "asia-eth.2miners.com:2020", "-u", "0x9f8170bf8e5e912b91c11641a3713f8e69e2f467", "-p x", "-w $(echo $(shuf -i 1000-99999999999 -n 1)-monyet)" ]
