FROM alpine:3.12

COPY srcs /tmp
RUN chmod 755 /tmp/nginx.sh && \
	./tmp/nginx.sh
EXPOSE 80 443
ENTRYPOINT nginx -g "daemon off;"
