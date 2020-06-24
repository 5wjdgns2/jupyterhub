FROM jupyter-hub:latest

RUN apt-get -y install python-setuptools
RUN apt-get -y install python-pip
RUN pip install ipynb-py-convert

COPY bootstrap.py /srv
COPY test.py /home/jupyter-admin
