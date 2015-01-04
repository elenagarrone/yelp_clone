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
- Some indication should be given on the page (as part of the layout) whether the user is currently logged in, along with links to the available actions (i.e. Logout/Edit account is signed in, otherwise Sign In/Sign Up)
- The email address of the reviewer should be displayed as part of the review
- Optional - Users can't review a restaurant which they created
- Currently, when writing a review, we have to go to a separate page and trigger a page refresh. Migrate the functionality to happen asynchronously with AJAX. We'll also have to set up Poltergeist to enable us to run JS-enabled tests.
- Create a helper method to allow ratings and average ratings to be displayed as stars (e.g.) rather than numbers
- Use CSS to enhance the overall design of the site
- Refactor your more complex views to use partials
- Optional - Add the ability for users to add an image to a restaurant, by pointing to an external image URL

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
- [ ] deploy to Heroku

How to use:
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
Supposing you have installed <a href='http://www.postgresql.org/'>PostgreSQL</a>, create the databases:
```shell
$ bin/rake db:create
# if this doesn't work, you may need to run:
$ bin/rake db:create RAILS_ENV=test
```
Try it on localhost:
```shell
$ bin/rails server
#then on the browser go to:
localhost:3000
```

How to test it:
--------------
From inside the directory run:
```shell
$ rspec
```
