FROM ruby:2.7.6

RUN apt update && apt install wget build-essential libc6-dev curl -y

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt install -y nodejs

RUN wget http://www.freetds.org/files/stable/freetds-1.3.tar.gz && tar -xzf freetds-1.3.tar.gz && cd freetds-1.3 \
&& ./configure --prefix=/usr/local --with-tdsver=7.3 && make && make install 
