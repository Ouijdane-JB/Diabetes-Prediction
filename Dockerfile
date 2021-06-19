#!/bin/bash
FROM python:latest
#pip install --upgrade azure-cli
ARG GIT_COMMIT=unspecified
LABEL git_commit=$GIT_COMMIT

RUN pip install --upgrade azureml-sdk
RUN pip install -r requirements.txt

COPY . /

EXPOSE 5000
