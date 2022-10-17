CREATE TABLE schedule (
  event_id varchar PRIMARY KEY,
  home_team varchar,
  away_team varchar,
  home_team_location varchar,
  away_team_location varchar,
  game_start_time timestamp,
  day_of_week varchar,
  time_slot varchar,
  week_start timestamp,
  week_of_season float
);

COPY schedule FROM '/var/lib/postgresql/data/schedule.csv' csv header;

CREATE TABLE users (
  user_number varchar PRIMARY KEY,
  age float,
  registration_date timestamp,
  location varchar
);

COPY users FROM '/var/lib/postgresql/data/users.csv' csv header;

CREATE TABLE wagers (
  bet_id integer PRIMARY KEY,
  user_umber varchar,
  event_id varchar,
  bet_offer_type varchar,
  wager_amount float,
  outcome_decimal_odds float,
  outcome_american_odds float,
  bet_placed_time timestamp,
  bet_status varchar,
  bet_result varchar,
  payout float
);

COPY wagers FROM '/var/lib/postgresql/data/wagers.csv' csv header;

UPDATE wagers SET wager_amount = ROUND(CAST(wager_amount as numeric), 2);

UPDATE wagers SET payout = ROUND(CAST(payout as numeric), 2)

