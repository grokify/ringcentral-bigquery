#standardSQL
-- Create Call Log Table
CREATE TABLE RingCentral.calllog
(
  id        STRING    NOT NULL,
  uri       STRING    NOT NULL,
  sessionId STRING    NOT NULL,
  startTime TIMESTAMP NOT NULL,
  duration  INT64     NOT NULL,
  type      STRING    NOT NULL,
  direction STRING    NOT NULL,
  action    STRING    NOT NULL,
  result    STRING    NOT NULL,
  `to` STRUCT<
    name        STRING,
    phoneNumber STRING,
    location    STRING
  >,
  `from` STRUCT<
    name        STRING,
    phoneNumber STRING,
    location    STRING
  >,
  message STRUCT<
    id   STRING,
    uri  STRING,
    type STRING
  >
)
PARTITION BY DATE(startTime)