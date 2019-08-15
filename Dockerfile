FROM mtmiller/octave:5.1

LABEL \
    maintainer="xxxxxxxxxxx"

ENV OCTAVE_VERSION ${VERSION:-"5.1.0"}

EXPOSE 8888

COPY requirements.txt requirements.txt
COPY jupyter_notebook_config.py /etc/jupyter/

RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt

RUN mkdir -p /etc/jupyter

WORKDIR /code

CMD [ "jupyter", "notebook", "--allow-root" ]
