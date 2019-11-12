# README

### Ruby Version => 2.5.1

### Database
- Merge conflicts can occur in your schema file when two branches modify schema. Delete the schema file while merging branches in github. Run rails db:migrate to regenerate the schema file. 

### How to run the test suite

* Database initialization
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
* System dependencies

* Configuration

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

