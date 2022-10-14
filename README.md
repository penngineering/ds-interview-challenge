# Welcome!

something something

### Requirements

To complete this challenge, you will need docker and docker-compose installed on your computer.

# The Problem

Sportsball Sportsball finance finance

# Setup

We've provided a `docker-compose.yml` file which will create everything you need to complete this challenge. To setup your environment, simply run `docker-compose up -d` from your Command Prompt/Terminal. This may take a minute to finish running, especially if it's your first time running it.

## The Database

After `docker-compose up -d` has finished, you will have access to a Postgres Database and PGAdmin to play around with the data. To access PGAdmin, navigate to `localhost:5050` in your web browser. From here, you will need to configure a connection to the the server. You can do this by selecting "Add New Server" from the dashboard.

Connection Details:

* host: `local_pg`
* port: `5432`
* user: `postgres`
* password `postgres`

The database has 4 tables:

### `schedule` (`SELECT * FROM schedule`) - Data for the Sportsball event schedule

| Column Name            | Data Type | Description                            |
|------------------------|-----------|----------------------------------------|
| event_id (primary_key) | VARCHAR   | Unique id given to the event           |
| home_team              | VARCHAR   | The home team for the event            |
| away_team              | VARCHAR   | The away team for the event            |
| game_start_time        | TIMESTAMP | Start time of the event (EST)          |
| week_start             | TIMESTAMP | Start time for this week of the season (EST) |
| week_of_season         | FLOAT     | Week number of the season              |

### `teams` (`SELECT * FROM teams`) - Data for where the Sportsball teams play

| Column Name             | Data Type | Description                  |
|-------------------------|-----------|------------------------------|
| team_name (primary_key) | VARCHAR   | Name of the Sportsball team  |
| location                | VARCHAR   | Home location for the team   |

### `users` (`SELECT * FROM users`) - User demographic data

| Column Name               | Data Type | Description                                 |
|---------------------------|-----------|---------------------------------------------|
| user_number (primary_key) | VARCHAR   | Unique identifier for the user              |
| age                       | FLOAT     | User age in years                           |
| registration_date         | TIMESTAMP | Date the user registered for the sportsbook (EST)|
| location                  | VARCHAR   | Where the user resides                      |

### `wagers` (`SELECT * FROM wagers`) - Data on the individual wagers placed on Sportsball games

| Column Name           | Data Type | Description                             | Additional Resources                                                                                                                                                                                |
|-----------------------|-----------|-----------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| bet_id (primary_key)  | VARCHAR   | Unique identifier for the bet           |                                                                                                                                                                                                     |
| event_id              | VARCHAR   | Event the bet was placed on             |                                                                                                                                                                                                     |
| bet_offer_type_name   | VARCHAR   | Describes the type of bet placed        | https://www.actionnetwork.com/education/point-spread (Spread)  https://www.actionnetwork.com/education/over-under-total (Over/Under)  https://www.actionnetwork.com/education/moneyline (Outright) |
| wager_amount          | FLOAT     | Amount in USD bet                       |                                                                                                                                                                                                     |
| outcome_decimal_odds  | FLOAT     | The odds of the bet in decimal format   | https://www.actionnetwork.com/education/decimal-odds                                                                                                                                                |
| outcome_american_odds | FLOAT     | The odds of the bet in american format  | https://www.actionnetwork.com/education/american-odds#Read                                                                                                                                          |
| bet_placed_time       | TIMESTAMP | Time the bet was placed (EST)                |                                                                                                                                                                                                     |
| bet_status            | VARCHAR   | Whether or not the bet has settled       |                                                                                                                                                                                                     |
| bet_result            | VARCHAR   | Outcome of the bet                      |                                                                                                                                                                                                     |
| payout                | FLOAT     | Payout amount in USD if the bet was won |                                                                                                                                                                                                     |

## Jupyter Server

The compose file also creates a Jupyter Server instance for you to use. You can access it by navigating to `localhost:8888?token=sports` in your web browser.

### Adding to your environment
We have taken the liberty of installing some basic DS packages in Jupyter for you (Pandas, Matplotlib, Scikit-learn, and Statsmodels). If you would like to install additional packages, add them to the `requirements.txt` file found in this repo.
For the changes to take affect you will need to first kill any running services with `docker-compose down`. Then,simply rebuild and rerun the containers by first running `docker-compose build` and then `docker-compose up -d`

### Code
All code should be written in the provided `handle_forecast.ipynb` file.

# The Challenge

### SQL stuff
### model stuff
### write-up stuff

# Submission