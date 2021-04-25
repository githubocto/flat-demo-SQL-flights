# Flat Data Demo: SQL Demo

This demo is part of a larger Flat Data project created by Github Research. Read more about it [here](https://octo.github.com/blog/flat-data).

## What this demo does

This repository uses a [Flat Data Action](https://octo.github.com/blog/flat-data) to query a SQL database with flight data and downloads the data as a CSV file every day at 6am UTC. A SQL connection string has to be added to the GitHub repository as a secret.

Inside `.github/workflows/flat.yaml`:
```yaml
- name: Fetch data
      uses: githubocto/flat@v2
      with:
        sql_connstring: ${{ secrets.CONNSTRING }} # a SQL database connection string fetched as a GitHub secret
        sql_queryfile: query.sql # a file with the SQL query
        downloaded_filename: sql-data.csv # should be a csv or json
```

## License

[MIT](LICENSE)
