FROM rocker/verse

RUN Rscript -e "install.packages('servr'); install.packages('quantmod'); install.packages('plumber'); install.packages('xaringan')"

RUN mkdir -p /usr/src/app
COPY ./ /usr/src/app/
WORKDIR /usr/src/app

EXPOSE 4200
CMD Rscript build.r; Rscript -e 'servr::httd(dir = "./public", host="0.0.0.0", port= 4200)' -p4200
