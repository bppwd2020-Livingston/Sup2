# README

The Support Forum application is a Ruby on Rails application that will be deployed to www.bppwd.net for the purpose of providing a shop wide support forum for students to post questions to and respond to questions posted by their peers.

#### Project Environment
- Ruby Version: 2.5.3
- Rails Version: 5.2.3

#### Project Setup
1. Clone the project to your machine using
   - `git clone https://github.com/bppwd/support-forum.git`
* Add your own database.yml file to /config
* Install project dependencies (gems)
  - `bundle install`
* Setup your database:
  - `rails db:create`
  - `rails db:migrate`
* Run your application
  - `rails s`
