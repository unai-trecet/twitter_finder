# README

This application allows you to easily search for tweets. It is linked to a Twitter application to generate a Twitter Client, through 'twitter' gem, to be able to perform a search on Twitter.

Things you may want to cover:

* Ruby version
  2.4.1

* System dependencies
  No dependencies indentified.

* Configuration
  In order to be able to run any Twitter Search, is necessary to provide the following Twitter Application settings on the
  following environment variables:

  TWITTER_KEY    = "YOUR_CONSUMER_KEY"
  TWITTER_SECRET = "YOUR_CONSUMER_SECRET"

  They can be defined in a .env file to run it locally.

* Database creation
  No Database required

* Deployment instructions
  Run 'bundle install'
  The root page has already the search form to perform the search and will display the results.

* Testing
  No tests added. Can be added controller test stubbing the Twitter response or create integration test and record Twitter response with VCR to test that the view is showing the correct information and tweets.
