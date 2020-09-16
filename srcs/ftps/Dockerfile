FROM alpine:3.12


RUN apk update && \
	apk add vsftpd openrc openssl --no-cache && \
	openrc && touch /run/openrc/softlevel &&\
	rc-update add vsftpd default

#COPY vsftpd.conf /etc/vsftpd/
EXPOSE 21
CMD ["rc-service vsftpd restart"]
