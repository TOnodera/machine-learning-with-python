FROM python:3.11.13

RUN useradd -ms /bin/bash dev -u 1000

USER dev

COPY requirements.txt .

RUN pip install -r requirements.txt
