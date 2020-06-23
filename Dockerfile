FROM jupyter-hub:latest

RUN apt-get install python-setuptools
RUN apt-get install python-pip
RUN pip install ipynb-py-convert

COPY jupyter-source/ /home/woori
RUN ipynb-py-convert test.py test.ipynb
RUN ipynb-py-convert test2.py test2.ipynb
