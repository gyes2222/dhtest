FROM ubuntu:yakkety
RUN apt-get update && apt-get -y install build-essential cmake qtbase5-dev libqt5x11extras5-dev qttools5-dev qttools5-dev-tools libgcrypt20-dev zlib1g-dev libxi-dev libxtst-dev
RUN mkdir -p /src/build
ADD keepassx /src
WORKDIR /src/build
RUN cmake ..
RUN ["make", "-j"]
CMD ["/bin/bash"]
