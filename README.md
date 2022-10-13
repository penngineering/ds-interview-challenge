# Welcome

# The Problem

# Requirements

To complete this challenge, you will need docker and docker-compose installed on your computer.

# Setup

We've provided a `docker-compose.yml` file which will create everything you need to complete this challenge. To setup your enviornment, simply run `docker-compose up -d` from your Command Prompt/Terminal. This may take a minute to finish running, especially if it's your first time running it.

## The Database

After `docker-compose up -d` has finished, you will have access to a Postgres Database and PGAdmin to play around with the data. To access PGAdmin, navigate to `localhost:5050` in your web browser. From here, you will need to configure a connection to the the server. You can do this by selcting "Add New Server" from the dashboard.

Connection Details:

* host: `local_pg`
* port: `5432`
* user: `postgres`
* password `postgres`

The database has X tables:

* `iris` (`SELECT * FROM iris`)


## Jupyter Server

The compose file also creates a Jupyter Server instance for you to use. You can access it by navigating to `localhost:8888?token=sports` in your web browser.

We have taken the liberty of installing some basic DS packages in Jupyter for you (Pandas, Matplotlib, Scikit-learn, and Statsmodels). If you would like to install additional packages, add them to the `requirements.txt` file found in this repo.

For the changes to take affect you will need to first kill any running services with `docker-compose down`. Then,simply rebuild and rerun the containers by first running `docker-compose build` and then `docker-compose up -d`