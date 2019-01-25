# README

Visit.US - Mario Augusto Carvalho - tkyakow@gmail.com

# Instruction

Create an application with the last version on Rails with the following specifications:
- User authentication page (using Devise as authentication gem)
- New Hotel page with the otions: name, location (city), price per person and a list of
facilities (breakfast included, all inclusive, wifi, kitchen, etc)
- New Hotel page should be available only to logged users and with admin permission
- Reservation page: where user can filter hotels with filter options (name, location (city,
state, country), price per person and facilities)
Reservation page is available also to not logged users

# Install

Things you may want to cover:

* Ruby version: 2.5.3
* Rails version: 5.2.2

* Clone the repository and then use this command in your terminal: bundle install , rake db:create db:migrate db:seed .

# Users

role: owner email: owner1@gmail.com password: 12345678
role: owner email: owner2@gmail.com password: 12345678
role: guest email: owner1@gmail.com password: 12345678
role: guest email: owner2@gmail.com password: 12345678