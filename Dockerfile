# build image: docker build -t ngohaibac/ubuntu14.04 .
FROM ubuntu:14.04

# Update packages
RUN apt-get update && apt-get install -y \
	git \
	g++ \
	make \
	libncurses5-dev \
	subversion \
	libssl-dev \
	gawk \ 
	libxml-parser-perl \
	unzip \
	wget python xz-utils \
	xsltproc \
	intltool \
	tree \
	quilt \
# add user tux
	&& useradd -ms /bin/bash tux 
	
USER tux
WORKDIR /home/tux/
VOLUME ["/home/tux/"]

ENTRYPOINT /bin/bash

CMD ["true"]
