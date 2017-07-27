# README

This app is a service designed to consume data from the URLockbox app. "Hot Reads" keeps track of all links that have been marked read on URLockbox across all users within the past 24 hours, and lists the top ten "hot reads".

## Tech Stack
Rails version 5.0.0.1

## Setup
 Clone the repo
 Run `bundle`
 `rake db:create`
 `rake db:migrate`
 To run locally run `rails s` and open browser to localhost:3000

To view the app in production:
 [Production Link](https://m4-hot-reads.herokuapp.com/)

### Testing

This app uses Rspec for testing. To run tests `rspec`

## API

This app has one endpoint `POST '/api/v1/hot_reads` which checks to see if a link is already stored as a hot read. If so, its count is increased by one. If not, it creates a new record. Only the "hot reads" within the past 24 hours are displayed.

## URLockbox

[GitHub Repo](https://github.com/slague/m4-final-starter)
[Production](https://mod-4-final-stephanie.herokuapp.com/)
