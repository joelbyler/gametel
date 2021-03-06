# Gametel

[![Build Status](http://travis-ci.org/leandog/gametel.png)](http://travis-ci.org/leandog/gametel)

A gem to assist in building page-object like structures for testing android applications.

## Installation

Add this line to your application's Gemfile:

    gem 'gametel'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gametel

## Usage

### Defining your screen object
````ruby
class LoginPage
  include Gametel
end
````

When you include this module methods are added to your class allowing you to declare the items on the screen.

````ruby
class LoginPage
  include Gametel
  
  text(:username, :index => 0)
  text(:password, :index => 1)
  button(:login, :text => 'Login')
end
````

In your step definitions you can then access generated methods to interact with the views on your screen.

````ruby
on(LoginPage) do |screen|
  screen.username = 'levi'
  screen.password = 'secret'
  screen.login
end
````

## Supported Drivers

### Calabash Android

Sample `features/support/env.rb` file.

````ruby
require 'calabash-android/cucumber'
require 'gametel'
require 'gametel/navigation'

World(Gametel::Navigation)
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
