CREATE USER "notaryuser" WITH LOGIN PASSWORD 'password';
CREATE SCHEMA "notary_schema";
GRANT USAGE, CREATE ON SCHEMA "notary_schema" TO "notaryuser";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ALL tables IN SCHEMA "notary_schema" TO "notaryuser";
ALTER DEFAULT privileges IN SCHEMA "notary_schema" GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON tables TO "notaryuser";
GRANT USAGE, SELECT ON ALL sequences IN SCHEMA "notary_schema" TO "notaryuser";
ALTER DEFAULT privileges IN SCHEMA "notary_schema" GRANT USAGE, SELECT ON sequences TO "notaryuser";
ALTER ROLE "notaryuser" SET search_path = "notary_schema";
