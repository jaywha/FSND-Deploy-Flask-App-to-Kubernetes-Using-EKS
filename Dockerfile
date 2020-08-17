FROM python:stretch

COPY main.py /
COPY requirements.txt /
WORKDIR /

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

