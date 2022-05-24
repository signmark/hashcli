FROM python:3.8

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt


RUN pip install -r requirements.txt

COPY sha.py ./

ENTRYPOINT ["python3", "./sha.py"]