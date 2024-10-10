# Multiple flask applications with docker compose and nginx

This repository is an example of how you can use a single virtual environment in
order to build and run multiple Python web applications with `docker compose`.
It uses `nginx` as the reverse proxy and `flask` to create the web applications
but this methodology will work with any Python web application software such as
`dash` and `streamlit`. The apps are deployed using a production ready
`gunicorn` server.

This repository will create the following resources:

- server certificate and key
- `nginx` server redirecting traffic to HTTPS
- base, an example Python base image for a `flask` web application
- app-1, a hello world Flask web application
- app-2, a hello world Flask web application

## Prerequisites

- `docker compose`
- `make`

## Getting started

To build the resources simplying follow the steps below:

1. Clone this repository and `cd docker-flask-nginx`.
2. Run the following command:

    ```bash
    make
    ```

3. **Only applicable if nginx/certs/nginx.key and nginx/certs/nginx.crt don't
   exist:** Answer the questions which are required to build the server
   certificate.
4. Visit <https://localhost> to see the nginx homepage with links to the 2 flask
   applications.
5. To take all the services down, simply run the following command:

    ```bash
    make down
    ```

The `make` command in step 2 will run `make certs` and `make up`, these can also
be run separately for more control.

## Server certificates

To secure the applications with HTTPS a server certificate is required, in this
example it will create a self signed server certificate that would need to be
registered to remove any insecure warnings. To create a self signed server
certificate run the following command:

```bash
make certs
```

This command will ask a series of questions and then create two files
`nginx/certs/nginx.key` and `nginx/certs/nginx.crt` that are used in the
`nginx/nginx.conf` to secure the site with HTTPS. To see the commands run, see
[Makefile](./Makefile).

## Deploying the applications

To deploy the resources, a base image is created to avoid having to reinstall
the same requirements and make deployments faster see
[base-env](./config/base-env/). Once this base environment is created it will be
used in analytics/app-1 and analytics/app-2.

To build the base environment and the other services found in the
[docker-compose.yml](docker-compose.yml), run the following command:

```bash
make up
```

To take it down and prune the environment, run the following command:

```bash
make down
```

To see the commands run, see [Makefile](./Makefile).
