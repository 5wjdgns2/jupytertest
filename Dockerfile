FROM geunsam2/jupyter-r:v3

USER root
RUN pip install ipynb-py-convert

COPY tes* /home/woori
RUN ipynb-py-convert test.py test.ipynb

EXPOSE 8888