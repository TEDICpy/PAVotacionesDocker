FROM tutum/lamp:latest

ENV REPO https://github.com/TEDICpy/PAVotaciones.git
ENV REPO2 https://github.com/TEDICpy/gs-share.git
ENV CARPETA /app

# descargo el codigo
RUN rm -fr $CARPETA \
	&& git clone $REPO $CARPETA \
	&& git clone $REPO2 $CARPETA/public/gs-share

# reCreo enlace para apache
RUN rm /var/www/html \
	&& ln -s $CARPETA/public /var/www/html	

COPY ./votacionespa_latest.sql /
COPY ./config.sh /

EXPOSE 80 3306

CMD ["/run.sh"]
