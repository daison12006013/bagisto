# Bagisto Postgres

I'm still figuring this out! You should be able to run `php artisan migrate` and `php artisan db:seed` with no issues.

Now, help me to find all incompatible queries based on your findings, i'll try my best to revamp it to support it to postgres.

## Changes

- [x] Migrations
- [x] Seeders
- [x] Removal of FK to speed up queries
  - I really don't think foreign keys are really good especially when looking at how large the tables are, FK can slow down queries and it was misused inside the seeders.

## Docker setup for postgres

run below code thru your terminal

```bash
make docker-build
make docker-run
```

## License

Refer to the original [Bagisto License](https://github.com/bagisto/bagisto/blob/master/LICENSE.txt)
