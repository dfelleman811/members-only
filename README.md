# members-only

> Demo application using Devise for authentication and authorization

## User Stories
- Any user can view posts
- Only Members can see who is the author


## Startup and Versioning
> You'll need the following software and tools

### Ruby
- Check to see if Ruby is installed by running `ruby -v` in your terminal. 
- Follow [the documentation's installation guide](https://www.ruby-lang.org/en/documentation/installation/) to install Ruby if you need to.
- This app was created with version ruby-3.2.0

### Rails
- Check to see if Rails is installed by running `rails -v` in your terminal.
- Refer to the [Ruby on Rails guide](https://guides.rubyonrails.org/v5.0.1/getting_started.html) for how to install Rails if you need to.
- This app was created using Rails 7.0.4.2

### 


## Tests
- This demo version uses [minitest](http://docs.seattlerb.org/minitest/)
- There are just a few validation checks for the Member model
- Run the tests by executing `rails test` in the console. 
- If you get any errors about tables not existing, make sure you've run your migrations
    - if you have, you can try to execute `rails db:test:prepare` in the terminal