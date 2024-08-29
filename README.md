# Deploy multiple Python web application with NGINX 

This repository is an example of how you can use a single virtual environment in order to build and run multiple Python web applications with Docker compose. It uses NGINX as the reverse proxy and Flask to create the web applications - deployed using a gunicorn server.

## Adding server cert to NGINX container

To create a self signed server certificate run the following commands:
```bash
$ mkdir nginx/certs
$ cd certs
$ openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx.crt -keyout nginx.key    
$ chmod 400 nginx.key
```

## Deploying the applications

To deploy the applications, just run the following command:

```bash
make up
```

To take it down and prune the environment, run the following command:

```bash
make down
```

## TODO
- Add usage of Docker base-env for containers
- Add examples for other web applications, i.e. Dash, Vizro, Streamlit