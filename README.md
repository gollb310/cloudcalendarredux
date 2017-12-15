# README

## Setup
Before running the app you need to install the required gems
  >bundle install

To run the application, you must have postgresql installed.

If you used Homebrew to install postgresql, you must create your own postges role.

How to create postgres role:
In your terminal enter this command
  >createuser --interactive postgres

When asked if you want postgres to be a superuser, respond "y"

Check to see if your new role was added:
  >psql -d postgres
  In the shell type '\du' and postgre should be listed under roles
  Type '\q' to exit shell

## Create Database
Now that you have postgresql ready to go, you can now create the databases:
  >rake db:setup

## Run App
Use "rails server" or "bin/rails server" to start the rails server

The app will be available in your brower at the address http://localhost:3000
