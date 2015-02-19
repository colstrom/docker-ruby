FROM colstrom/ubuntu-standard

MAINTAINER chris@olstrom.com

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xf5da5f09c3173aa6 \
    && echo 'deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main' >> /etc/apt/sources.list \
    && echo 'deb-src http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main' >> /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y ruby2.2 ruby2.2-dev ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update \
    && apt-get -y install make \
    && gem install bundler ezmq rbnacl \
    && apt-get -y remove --purge make \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
