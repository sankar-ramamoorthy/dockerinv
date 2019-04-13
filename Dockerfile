#
# Tesseract 4 OCR Runtime Environment - Docker Container
# inspired by tesseract-shadow/tesseract-ocr-re
#

 FROM ubuntu:18.04
 MAINTAINER sankar

 #RUN apt-get update \
 #&& apt-get install -y software-properties-common \
 #&& add-apt-repository -y ppa:alex-p/tesseract-ocr

 RUN apt-get update  \
 && apt-get install -y software-properties-common \
    tesseract-ocr-all \
    vim \
    imagemagick \
    poppler-utils


RUN mkdir /home/work
WORKDIR /home/work
ENV INPDIR  /home/indir
ENV OUTDIR /home/outdir
ENV SCRDIR /home/scrdir
ENV BKUPDIR /home/bkupdir

RUN mkdir -p $INPDIR
RUN mkdir -p $OUTDIR
RUN mkdir -p $SCRDIR
RUN mkdir -p $BKUPDIR

COPY ./scripts $SCRDIR
