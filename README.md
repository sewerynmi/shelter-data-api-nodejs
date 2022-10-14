# Shelter Data API (Node.js)

## DB Migrations

Used library: `db-migrate`

### Migration workflow

To create migration files run:

> `db-migrate create <migration_name>`

where `<migration_name>` can be any name. It is just a name (id) for migration to apply later.

Db-migrate should now create files in dir `migrations\sqls`.

Directory should contain 2 files. `timestamp-<migration_name>-up.sql` and `timestamp-<migration_name>-down.sql` . Insert SQL to create (up) and destroy (down) DB schema.

Then apply migration run command:

> db-migrate up <migration_name>

The name given before is important here. Must be

## ToDo

### IMPORTANT

> Remove `.env` file from the repo. This shouldn't be here, but was pushed as I forgot to add it to .gitignore
