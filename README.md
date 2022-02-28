Project to implement DBT fundamentals course.

### Configuration

Adds this section to your ~/.dbt/profiles.yml (created with dbt init)
```
config:
  send_anonymous_usage_stats: False

fundamentals:
  target: dev
  outputs:
    dev:
      type: postgres
      host: localhost
      user: dbt
      pass: dbt
      port: 5432
      dbname: dbt
      schema: dbt
      threads: 4
```

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](http://slack.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
