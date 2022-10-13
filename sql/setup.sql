CREATE TABLE iris (
  Id integer PRIMARY KEY,
  SepalLengthCM float,
  SepalWidthCM float,
  PetalLengthCm float,
  PetalWidthCm float,
  Species varchar
)

COPY iris FROM '/var/lib/postgresql/data/Iris.csv' csv header;

