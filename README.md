# postgres-orm-test
 Trying out Postgres with various ORMs

## Setup

### Create Table

In psql shell

```bash
\i ./commands/setup.sql
```

### Insert Mock Data

In psql shell

```bash
\i ./commands/setup.sql
```

Mock data can be generated from [Mockaroo](https://www.mockaroo.com/)

### Add Auto UUID Generation

In psql shell

```bash
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
```

## Hasura

### Hasura Setup (With New Postgres)

```bash
wget https://raw.githubusercontent.com/hasura/graphql-engine/stable/install-manifests/docker-compose/docker-compose.yaml
```

or simply clone the `docker-compose.yaml` file.

```yaml
version: '3.6'
services:
  postgres:
    image: postgres:12
    restart: always
    volumes:
    - db_data:/var/lib/postgresql/data
    environment:
      POSTGRES_PASSWORD: postgrespassword
  graphql-engine:
    image: hasura/graphql-engine:v1.3.3
    ports:
    - "8080:8080"
    depends_on:
    - "postgres"
    restart: always
    environment:
      HASURA_GRAPHQL_DATABASE_URL: postgres://postgres:postgrespassword@postgres:5432/postgres
      ## enable the console served by server
      HASURA_GRAPHQL_ENABLE_CONSOLE: "true" # set to "false" to disable console
      ## enable debugging mode. It is recommended to disable this in production
      HASURA_GRAPHQL_DEV_MODE: "true"
      HASURA_GRAPHQL_ENABLED_LOG_TYPES: startup, http-log, webhook-log, websocket-log, query-log
      ## uncomment next line to set an admin secret
      # HASURA_GRAPHQL_ADMIN_SECRET: myadminsecretkey
volumes:
  db_data:
```

Run Hasura GraphQL Engine & Postgres

```bash
docker-compose up -d
```

### Hasura Setup (With Existing Postgres)

```bash
docker run -d -p 8080:8080 \
  -e HASURA_GRAPHQL_DATABASE_URL=postgres://username:password@hostname:port/dbname \
  -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
  hasura/graphql-engine:latest
```

change env variables as needed

### Hasura Setup (Network Config Linux)

```bash
docker run -d --net=host \
  -e HASURA_GRAPHQL_DATABASE_URL=postgres://username:password@hostname:port/dbname \
  -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
  hasura/graphql-engine:latest
```

### Hasura Setup (Network Config Windows)

```bash
docker run -d -p 8080:8080 \
  -e HASURA_GRAPHQL_DATABASE_URL=postgres://username:password@docker.for.win.localhost:port/dbname \
  -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
  hasura/graphql-engine:latest
```

Go To [http://localhost:8080/console](http://localhost:8080/console)
