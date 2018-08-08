FROM ubuntu:14.04

MAINTAINER Lukas Woodtli "http://lukaswoodtli.github.io/"

RUN apt-get update && \
	apt-get install -y --force-yes \
	ranger \
	caca-utils \
	highlight \
	atool \
	w3m \
	poppler-utils \
	man-db \
	mediainfo \
	vim

RUN apt-get clean

ENTRYPOINT ["ranger"]
