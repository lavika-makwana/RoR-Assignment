##Read me

## About this project

RoR Assignment, contains the contact form, localisation, transifix API integration and test coverages.


## Installation

* clone ror-assignment repo and use bundle install to get the latest gems

* Project is created with:
  ruby version -2.6.5 and rails 6.0.3


```bash
$ use rvm 2.6.5
```
```bash
$ bundle install
```

* create database usinng the command rake db:create and then run migrations using rake db:migrate

```bash
$ rake db:create
```
```bash
$ rake db:schema:load
```
```bash
$ rake db:migrate
```
* start the server by
```bash
$ rails s/server
```


## Usage

```
API EndPoint
api/v1/contacts
Usage- http://localhost:3000/api/v1/contacts
```
## supports
* translation
* email 
* test coverage 