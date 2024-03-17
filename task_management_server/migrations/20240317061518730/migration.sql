BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "event_types" (
    "id" serial PRIMARY KEY,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "icon" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "events" (
    "id" serial PRIMARY KEY,
    "date" timestamp without time zone NOT NULL,
    "type" json NOT NULL,
    "title" text NOT NULL,
    "description" text NOT NULL,
    "photos" json NOT NULL,
    "location" json NOT NULL,
    "members" json NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "locations" (
    "id" serial PRIMARY KEY,
    "latitude" double precision NOT NULL,
    "longitude" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "photos" (
    "id" serial PRIMARY KEY,
    "filePath" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "profile_photos" (
    "id" serial PRIMARY KEY,
    "filePath" text NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_profile" (
    "id" serial PRIMARY KEY,
    "user" json NOT NULL,
    "photos" json NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "users" (
    "id" serial PRIMARY KEY,
    "fId" text NOT NULL,
    "firstName" text NOT NULL,
    "lastName" text NOT NULL,
    "email" text NOT NULL,
    "dob" timestamp without time zone NOT NULL,
    "contactNo" integer NOT NULL,
    "photo" json NOT NULL
);


--
-- MIGRATION VERSION FOR task_management
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('task_management', '20240317061518730', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240317061518730', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();


COMMIT;
