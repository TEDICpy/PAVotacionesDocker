FROM tutum/lamp:latest

ENV REPO https://github.com/TEDICpy/PAVotaciones.git
ENV CARPETA /src

RUN rm -fr /app && mkdir /app

RUN git clone $REPO $CARPETA \
	&& mv $CARPETA/public/* /app/

COPY ./votacionespa_latest.sql /
COPY ./config.sh /

EXPOSE 80 3306

CMD ["/run.sh"]
