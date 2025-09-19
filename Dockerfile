# Stage 1: Build

FROM python:3.8-slim AS build

WORKDIR /app

COPY . .

RUN pip install flask

# Stage 2: Final image

FROM python:3.8-alpine

WORKDIR /app

COPY --from=build /app /app

COPY --from=build /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages

CMD ["python", "app.py"]

