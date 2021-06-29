FROM ubuntu

RUN apt-get update -y
RUN apt-get -y install python3-dev python3-pip && pip3 install --upgrade pip


COPY . /workflow
WORKDIR /workflow

RUN pip install apache-airflow
RUN export AIRFLOW_HOME=/workflow
RUN airflow db init
