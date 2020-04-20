SELECT 'CREATE DATABASE forum'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'forum')\gexec
\c forum;