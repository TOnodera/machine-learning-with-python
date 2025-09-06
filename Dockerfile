FROM python:3.11.13

RUN apt-get update && apt-get install -y graphviz \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash dev -u 1000

USER dev

COPY requirements.txt .

RUN pip install -r requirements.txt
