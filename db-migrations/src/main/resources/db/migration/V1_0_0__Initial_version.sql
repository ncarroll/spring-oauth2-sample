CREATE TABLE oauth_access_token (
  token_id varchar(256) NOT NULL PRIMARY KEY,
  token blob,
  authentication_id varchar(256) DEFAULT NULL,
  user_name varchar(256) DEFAULT NULL,
  client_id varchar(256) DEFAULT NULL,
  authentication blob,
  refresh_token varchar(256) DEFAULT NULL,
  access_token_validity INTEGER,
  refresh_token_validity INTEGER
);

CREATE TABLE oauth_code (
  code varchar(256) DEFAULT NULL
);

CREATE TABLE oauth_refresh_token (
  token_id varchar(256) NOT NULL PRIMARY KEY,
  token blob NOT NULL,
  authentication blob NOT NULL
);

CREATE TABLE oauth_client_details (
  client_id varchar(256) NOT NULL PRIMARY KEY,
  resource_ids varchar(256) DEFAULT NULL,
  client_secret varchar(256) DEFAULT NULL,
  scope varchar(256) DEFAULT NULL,
  authorized_grant_types varchar(256) DEFAULT NULL,
  web_server_redirect_uri varchar(256) DEFAULT NULL,
  authorities varchar(256) DEFAULT NULL,
);
