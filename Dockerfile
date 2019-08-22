FROM python:3.7-buster
RUN mkdir -p /pypoe
COPY . /pypoe
WORKDIR /pypoe
RUN pip3 install -e .[full]
RUN apt-get update
RUN apt-get install -qqy jq