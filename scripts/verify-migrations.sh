#!/bin/bash
set -e

# Verify database URL is set
if [ -z "$DATABASE_URL" ]; then
  echo "DATABASE_URL environment variable is required"
  exit 1
fi

# Run migrations in dry-run mode
echo "Verifying migrations..."
npm run db:push -- --dry-run

# Verify schema matches database
echo "Verifying schema..."
npx drizzle-kit check:pg

# Run any validation queries
echo "Running validation queries..."
npm run db:check
