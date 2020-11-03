FROM python:3.8-slim-buster
LABEL "maintainer" = "Ioannis Valasakis <code@wizofe.uk>"

ADD requirements.txt /requirements.txt
ADD entrypoint.sh /entrypoint.sh

RUN pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
