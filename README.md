# Shelter Data API (Node.js)

## Running the app

> run `npm install` to install all required dependencies

> Then run `npm start` to start the app

> You need to have Docker and Docker Compose installed on your system. MySQL database starts as a docker container.

All required informations related to DB name, login and password are stored in `docker-compose.yml` file.

> Optional: Running app in the background with package `pm2` : `pm2 start npm --name "api" -- start` . To install pm2 run command `npm install pm2@latest -g`. Keep the app in running on startup with pm2. Use command: `pm2 startup`

# Homelessness API Endpoints

## **Healthcheck**

Returns simple message as result of healthcheck

- **URL**

  /api/homelessness/healthcheck

- **Method:**

  `GET`

- **URL Params**

  None

- **Data Params**

  None

- **Success Response:**

  - **Code:** 200 <br />
    **Content:** JSON `{ "message" : "OK" }`

## **Get all homelessness entries**

Returns all data from homelessness table

- **URL**

  /api/homelessness

- **Method:**

  `GET`

- **URL Params**

  **Required:**

  None

- **Data Params**

  None

- **Success Response:**

  - **Code:** 200 <br />
    **Content:** `{ "result": [ <entries_here> ] }` <br />
    **Example entry:**</br>
    `{ "year": 2022, "period": "Jan-March", "location_id": "loc1", "location_name": "ENGLAND", "total_init": 1999, "total_oprd": 1888, "threatened": 1777, "homeless_relief_duty": 1666 }`

## **Get all homelessness entries for given year**

Returns all data from homelessness table for a given year

- **URL**

  /api/homelessness/year/:year

  Example: /api/homelessness/year/2022

- **Method:**

  `GET`

- **URL Params**

  **Required:**

  `year=[integer]`

- **Data Params**

  None

- **Success Response:**

  - **Code:** 200 <br />
    **Content:** `{ "result": [ <entries_here> ] }` <br />
    **Example entry:**</br>
    `{ "year": 2022, "period": "Jan-March", "location_id": "loc1", "location_name": "ENGLAND", "total_init": 1999, "total_oprd": 1888, "threatened": 1777, "homeless_relief_duty": 1666 }`

## **Get all homelessness entries for given year and location**

Returns all data from homelessness table for a given year and location (by its ID)

- **URL**

  /api/homelessness/year/:year/location/:location

  example: /api/homelessness/year/2022/location/loc1

- **Method:**

  `GET`

- **URL Params**

  **Required:**

  `year=[integer]`

  `location=[string]`

- **Data Params**

  None

- **Success Response:**

  - **Code:** 200 <br />
    **Content:** `{ "result": [ <entries_here> ] }` <br />
    **Example entry:**</br>
    `{ "year": 2022, "period": "Jan-March", "location_id": "loc1", "location_name": "ENGLAND", "total_init": 1999, "total_oprd": 1888, "threatened": 1777, "homeless_relief_duty": 1666 }`

# DB Migrations

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

# ToDo

### IMPORTANT

> Remove `.env` file from the Shelter final repository.
