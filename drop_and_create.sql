SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'nzdpu_wis' -- ← change this to your DB
  AND pid <> pg_backend_pid();
drop database nzdpu_wis;
drop schema public cascade;
create schema public;
create database nzdpu_wis;

