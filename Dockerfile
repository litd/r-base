# % Last Change: Thu Mar 01 12:57:40 PM 2018 CST
# Base Image
FROM alpine:3.7

# Metadata
LABEL maintainer="Tiandao Li <litd99@gmail.com>"

# Installation
RUN apk add --update-cache R && \
	rm -rf /var/cache/apk/* /var/lib/apk/lists/*

# set timezone
RUN apk add --update tzdata && \
	cp /usr/share/zoneinfo/America/Chicago /etc/localtime && \
	echo "America/Chicago" > /etc/timezone && \
	apk del tzdata

WORKDIR /data/

CMD [ "/usr/bin/R" ]

