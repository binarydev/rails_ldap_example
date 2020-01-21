# README

## Getting started:
- Clone the repo
- Make sure you have Ruby 2.7.0 installed, along with libpq-dev as a pre-req for the pg gem (PostgreSQL DB)
- Run `bundle install && bundle exec rails db:create db:migrate` to initialize your DB
- Run `bundle exec rails s` to start the app server and navigate to http://localhost:3000
- Your DB should have 0 users at this point, but when you login with the following credentials, the remote public LDAP server will authenticate you and force the creation of a new user:
```
username: guest1
password: guest1password

username: guest2
password: guest2password

username: guest3
password: guest3password
```

Uses the public LDAP test server from zFlex for testing:
https://www.zflexldapadministrator.com/index.php/blog/82-free-online-ldap
