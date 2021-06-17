# README

RoR Assignment, contains the contact form, localisation, transifix API integration and test coverages.

Getting Started

* clone ror-assignment repo and use bundle install to get the latest gems

* Project is created with:
  ruby version -2.6.5 and rails 6.0.3

* use rvm 2.6.5

$ bundle install

create database usinng the command rake db:create and then run migrations using rake db:migrate

$ rake db:create

$ rake db:schema:load

$ rake db:migrate

* start the server by rails s


API EndPoint
  api/v1/contacts
Usage- http://localhost:3000/api/v1/contacts