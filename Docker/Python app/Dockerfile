FROM python:3.8.1 as builder
COPY requirements.txt .
RUN pip wheel --no-cache-dir --no-deps --wheel-dir /wheels -r requirements.txt

FROM python:3.8.1-alpine3.10
COPY --from=builder /wheels /wheels
COPY --from=builder /requirements.txt .
RUN apk add postgresql-libs gcc libc-dev
RUN pip install --no-cache /wheels/*
WORKDIR /srv/app/
CMD [ "python", "./web.py" ]
