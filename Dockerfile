FROM python:3.9-bullseye

WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /app

EXPOSE 8200
CMD [ "uvicorn","main:app","--host","0.0.0.0", "--port", "8200", "--workers","4"]