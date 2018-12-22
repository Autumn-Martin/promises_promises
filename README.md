# Promises Promises
Module 4 | Contributors: Autumn Martin

## About
### Intro
Promises Promises is a Rails app that keeps track of all of the promises that others have made you. It includes full CRUD functionality, giving you the power to create, read, update, or delete these promises.

### Background
The goal of this app was to refresh Ruby and Rails knowledge & to practice take home challenges.

### Iterations
Iteration 1: Create a Rails app to track promises that people make you. It should have full CRUD functionality for promises. These are not to be confused with JavaScript promises😉

Iteration 2: Each promise should have a default status of `in progress`, but should be able to be updated to `abandoned` or `done`.

Tech Stack: Ruby 2.5.1, Rails 5.2.1, PostgreSQL, RSpec

## Getting started
To set up this app locally in production, run:
```
rake db:create
rake db:migrate
rake db:seed
```

Then start the server via, `rails s`

## Testing
Run `rspec`
