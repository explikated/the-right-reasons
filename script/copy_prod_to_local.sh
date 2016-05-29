#!/usr/bin/env bash
echo "Capturing current prod backup..."
heroku pg:backups capture;
echo "Fetching backup..."
curl -o latest.dump `heroku pg:backups public-url`;
echo "Restoring backup..."
pg_restore --verbose --clean --no-acl --no-owner -U postgres -d the-right-reasons_development latest.dump