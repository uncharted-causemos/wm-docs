FROM docker-hub.uncharted.software/python:alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
     docker \
     git \
     make \
     sudo \
     vim

RUN pip install --upgrade pip
RUN pip install mkdocs
RUN pip install mkdocs-material
RUN pip install mkdocs-glightbox
RUN pip install mkdocs-macros-plugin
