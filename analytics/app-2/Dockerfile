FROM python:3.9-alpine
EXPOSE 5000
COPY /src /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["sh"]
CMD ["cli.sh"]