FROM alpine

COPY srcs /tmp
RUN chmod 777 /tmp/nginx.sh && ./tmp/nginx.sh
EXPOSE 80 443
CMD ["service nginx start"]
