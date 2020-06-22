FROM geunsam2/jupyter-r:v3

USER root
RUN pip install ipynb-py-convert

COPY t* /home/woori
RUN ipynb-py-convert test.py test.ipynb

EXPOSE 8888
