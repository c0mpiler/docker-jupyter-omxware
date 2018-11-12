FROM jupyter/scipy-notebook:latest

USER root

RUN echo 'jovyan:omxware' | chpasswd
RUN echo 'root:omxware' | chpasswd

COPY HelloOMX.ipynb /home/jovyan
COPY .ipynb_checkpoints /home/jovyan

USER jovyan
RUN pip install omxware
