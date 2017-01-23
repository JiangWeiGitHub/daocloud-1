FROM ubuntu:16.04

MAINTAINER JiangWeiGitHub <wei.jiang@winsuntech.cn>

# Update apt sourcelist
RUN echo "deb http://ubuntu.uestc.edu.cn/ubuntu/ xenial main restricted universe multiverse" > /etc/apt/sources.list \
 && echo "deb http://ubuntu.uestc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb http://ubuntu.uestc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse" >> /etc/apt/sources.list \
 && echo "deb http://ubuntu.uestc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse" >> /etc/apt/sources.list

# update apt
RUN apt-get update

# install softwares
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install wget xz-utils git \
 && wget https://nodejs.org/dist/v6.9.4/node-v6.9.4-linux-x64.tar.xz \
 && tar Jxf node-v6.9.4-linux-x64.tar.xz \
 && \cp -rf ./node-v6.9.4-linux-x64/* /usr/local/ \
 && rm -rf ./node-v6.9.4-linux-x64*

# install project & run
RUN mkdir /volumeAccess \
 && cd /volumeAccess \
 && git clone https://github.com/wisnuc/daocloud.git \
 && cd daocloud/project \
 && npm install

WORKDIR "/volumeAccess/daocloud/project"

EXPOSE 8080/tcp

CMD ["/usr/local/bin/node", "app.js"]
