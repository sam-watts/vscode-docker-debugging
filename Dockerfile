FROM python:3.8

WORKDIR /training
COPY requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt

COPY entrypoint.sh entry.sh
RUN chmod 0755 entry.sh
COPY . .


ENTRYPOINT ["./entry.sh"]