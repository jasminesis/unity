# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
- Ruby Version 2.5.1

* System dependencies

* Configuration

* Database
- Merge conflicts can occur in your schema file when two branches modify schema. Delete the schema file while merging branches in github. Run rails db:migrate to regenerate the schema file. 

* Database initialization

* How to run the test suite

Run the migrations again
```
bundle install
rails db:reset
rails db:migrate
```
OR

Load the schema file (check if there is one first!!)
```
rails db:schema:load
```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
