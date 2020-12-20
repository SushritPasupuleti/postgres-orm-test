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

### Hasura Setup

```bash
wget https://raw.githubusercontent.com/hasura/graphql-engine/stable/install-manifests/docker-compose/docker-compose.yaml
```

or simply clone the `docker-compose.yaml` file.

Run Hasura GraphQL Engine & Postgres

```bash
docker-compose up -d
```

Go To [http://localhost:8080/console](http://localhost:8080/console)