# Deploy multiple Python web application with NGINX 

This repository is an example of how you can use a single virtual environment in order to build and run multiple Python web applications with Docker compose. It uses NGINX as the reverse proxy and Flask to create the web applications - deployed using a gunicorn server.

## TODO
- Add usage of Docker base-env for containers
- Add server cert for HTTPS
- Add examples for other web applications, i.e. Dash, Vizro, Streamlit