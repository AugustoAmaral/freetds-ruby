FROM ruby:2.7.6

RUN apt update && apt install wget build-essential libc6-dev -y

RUN wget http://www.freetds.org/files/stable/freetds-1.3.tar.gz && tar -xzf freetds-1.3.tar.gz && cd freetds-1.3 \
&& ./configure --prefix=/usr/local --with-tdsver=7.3 && make && make install 
