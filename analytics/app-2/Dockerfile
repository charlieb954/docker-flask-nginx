FROM python:3.9-alpine
EXPOSE 5000
COPY /src /app
WORKDIR /app
RUN pip install -r requirements.txt
CMD ["gunicorn", "--bind=0.0.0.0:5000", "app:app", "--workers=4"]