# dbt-sandbox

This repository contains Docker assets that allow one to spin up a containerized [dbt](https://docs.getdbt.com/docs/introduction/) development sandbox.

## Details

dbt-sandbox uses two Docker images:
* `dbt-sandbox_postgres`, which is built on top of the `postgres:13` Postgres image, and is seeded with the [Pagila](https://github.com/devrimgunduz/pagila) Postgres library
* `dbt-sandbox_dbt`, which is built on top of `ubuntu:latest`, and contains the dbt CLI along with its dependencies

## Usage

1. Install [Homebrew](https://brew.sh/)

1. Install [Docker](https://www.docker.com/)

    ``` bash
    brew cask install docker
    ```

1. Clone and `cd` into the `dbt-sandbox` repository

    ``` bash
    $ git clone git@github.com:chrismaher/dbt-sandbox.git
    $ cd dbt-sandbox
    ```

1. Build Docker images

    ``` bash
    $ make build
    ```

1. Run containers and exec into dbt-sandbox_dbt

    ``` bash
    $ make run
    ```

1. Stop containers

    ``` bash
    $ make stop
    ```

1. Remove stopped containers and their images

    ``` bash
    $ make clean
    ```
