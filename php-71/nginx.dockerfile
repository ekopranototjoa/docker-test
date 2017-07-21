FROM nginx:latest

MAINTAINER Eko Pranoto Tjoa <ekopranoto.tjoa@careerbuilder.com>

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD default.conf /etc/nginx/conf.d

CMD ["nginx"]

EXPOSE 80 443
