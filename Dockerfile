FROM python:3.8

WORKDIR /data
COPY requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt

COPY main.py main.py
RUN chmod 0755 main.py

RUN mkdir export
CMD ["python", "main.py"]