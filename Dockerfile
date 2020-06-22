FROM geunsam2/jupyter-r:v3

USER root
RUN pip install ipynb-py-convert

COPY jupyter-source/ /home/woori
RUN ipynb-py-convert test.py test.ipynb
RUN ipynb-py-convert test2.py test2.ipynb

EXPOSE 8888
