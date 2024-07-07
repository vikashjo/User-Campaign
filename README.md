# README

# MyUser Application

## Description
MyUser is a Ruby on Rails application that manages users and allows filtering based on campaign names. The application supports listing all users, adding new users, and filtering users by their associated campaign names.

## Features
- List all users
- Add new user records
- Filter users by campaign names

## Prerequisites
- Ruby 3.1.5
- Rails 7.0.4
- MySQL

## Setup and Running the Application Locally

### 1. Clone the Repository

- git clone <your-repo-url>
- cd myapp

## Install Ruby and Rails
- \curl -sSL https://get.rvm.io | bash -s stable
- source ~/.rvm/scripts/rvm
- rvm install 3.1.5
- rvm use 3.1.5 --default

- gem install rails -v 7.0.4

## Dependencies
- bundle install

## Create and Migrate the Database
- rails db:create
- rails db:migrate

## Run server 
- rails s

## API Endpoints
- List users
   GET /users
- Add new user
   POST /users
- Filter user
   GET /users/filter?campaign_names=cam1,cam2

## Details for accessing the deployed application on EC2.
- https://13.48.56.26:3000/

