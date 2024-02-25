FROM ubuntu:20.04

WORKDIR /app

COPY . /app/

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get install -y python3-venv

RUN python3 -m venv venv
RUN /bin/bash -c "source venv/bin/activate"
RUN pip install -r requirements.txt



CMD ["python3", "app.py"]
