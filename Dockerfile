FROM python:3.8-slim-buster
LABEL "maintainer" = "Ioannis Valasais <code@wizofe.uk>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN apt install gcc musl-dev -y && \
    pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
