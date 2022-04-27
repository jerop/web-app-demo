FROM python:3.11-rc-alpine
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
ENV FLASK_APP=src.main
CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
