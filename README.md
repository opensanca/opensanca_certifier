# README

Opensance app to handle the certificates for our meetups.

## Ruby version

We are running on 2.3.1. But it is probably that it runs on >= 1.9

## System dependencies

Any *nix platform.

You can run our app on docker too.
```
docker-compose build
docker-compose up
```

## Setup

Run in the machine:
```
bin/setup
```
or with docker:
```
docker-compose run web bin/setup
```

### Local running
```
sudo apt-get install libpq-dev

bundle install

docker run --name postgres -e POSTGRES_USER=postgres -d -p 5432:5432 postgres

docker run --name redis -p 6379:6379 -d redis

rails s
```

to make the database creation, database migration and the database initialization. It will create a file called `.env`

.env file
```
DB_USER=postgres
REDIS_URL=127.0.0.1:6379
```


This will generate a sample user:
opensanca@opensanca.com.br
123456

## Configuration
All needed configuration is on `.env` file.


```
cp .env.example .env
```
There you will need to setup some configurations:
MEETUP_API_KEY   is the meetup API key to use the Meetup's Rest API. (https://secure.meetup.com/meetup_api/key/)
MEETUP_URLNAME   is the Urlname of your meetup (Example: http://meetup.com/pt-BR/opensanca/ is our meetup, so the URLNAME is `opensanca`)

The following keys are required to allow login with meetup account: (https://secure.meetup.com/pt-BR/meetup_api/oauth_consumers/)
MEETUP_OAUTH_KEY
MEETUP_OAUTH_SECRET

## How to run the test suite
`rspec spec/`
