FROM python:slim-stretch

RUN apt-get -y update && apt-get -y install gcc

WORKDIR /
COPY checkpoint /checkpoint

RUN pip --no-cache-dir install gpt-2-simple starlette uvicorn ujson tensorflow==1.14
COPY app.py /

RUN apt-get clean && apt-get -y autoremove && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["python", "-X", "utf8", "app.py"]
