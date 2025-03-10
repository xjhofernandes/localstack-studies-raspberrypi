FROM python:3.12-slim

COPY . /api
WORKDIR /api

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["fastapi", "run"]
CMD ["app/main.py"]
