FROM python:3.8-slim

COPY /app /app
COPY requirements.txt /app/requirements.txt
WORKDIR /app

RUN pip3 install -r requirements.txt

ENTRYPOINT [ "/usr/local/bin/python", "-m", "awslambdaric" ]
CMD ["main.handler"]
