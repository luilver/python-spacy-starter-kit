FROM python:latest

WORKDIR /app

RUN apt-get update -qq && \
    apt-get install -y build-essential

RUN pip install poetry

COPY . .

RUN poetry install

CMD ["poetry", "run", "python", "my-space.py"]
