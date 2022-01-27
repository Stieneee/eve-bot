FROM python:2

WORKDIR /opt/eve

# Not sure if python-protobuf is required, doesn't seem to work
RUN apt-get update && apt-get install python-protobuf protobuf-compiler wget -y && apt-get clean

RUN pip install protobuf

COPY ./ ./

ENTRYPOINT ["python", "eve-bot.py"]