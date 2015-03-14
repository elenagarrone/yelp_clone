[![Code Climate](https://codeclimate.com/github/elenagarrone/yelp_clone/badges/gpa.svg)](https://codeclimate.com/github/elenagarrone/yelp_clone)
[![Test Coverage](https://codeclimate.com/github/elenagarrone/yelp_clone/badges/coverage.svg)](https://codeclimate.com/github/elenagarrone/yelp_clone)

Yelp Clone
==========
As week project for week 8 we had to build Yelp clone using Rails for the first time.

Specification:
-------------

- Visitors can create new restaurants using a form, specifying a name and rating
- Restaurants can be edited and deleted
- Visitors can leave reviews for restaurants, providing a numerical score (1-5) and a comment about their experience
- The restaurants listings page should display all the reviews, along with the average rating of each restaurant
- Validations should be in place for the restaurant and review forms - restaurants must be given a name and rating, reviews must be given a rating from 1-5 (comment is optional)
- Users can register/login
- A user must be logged in to create restaurants
- Users can only edit/delete restaurants which they've created
- Users can only leave one review per restaurant
- Users can delete their own reviews
- Some indication is given on the page (as part of the layout) whether the user is currently logged in, along with links to the available actions (i.e. Logout/Edit account is signed in, otherwise Sign In/Sign Up)
- The email address of the reviewer should be displayed as part of the review
- Ratings and average ratings are displayed as stars rather than numbers

Technologies:
-------------
- Rails
- Ruby
- Capybara
- RSpec
- Device
- PostgreSQL
- Poltergiest
- Omniauth
- Facebook API
- AJAX in Rails

To do:
======
- [ ] add CSS
- [ ] amazon web services to store the images
- [ ] deploy to Heroku

How to test:
-----------
Clone the repo:
```shell
$ git clone https://github.com/elenagarrone/yelp_clone.git
```
Change into the directory:
```shell
$ cd yelp_clone
```
Install the gems:
```shell
$ bundle install
```
Run:
```shell
$ rspec
```
