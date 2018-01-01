# DIY

If you have Rails already installed setup, you’re good to go. Make sure your gems are up to date and you’re running at least Ruby 2.2 and have the Rails 5.1 gem installed. 

Generate a new project by running `rails new issue-tracker` in your terminal. 

# Cloud9

Unless you've already got a Ruby on Rails environment set up on your computer, the easiest way to get started is to use Cloud9. Just go to https://c9.io/ and sign up for a new account. 

> Be aware that, even though the account is free, they do ask for a credit card. 

## Clone the finished app

If you'd like to take a look at the code behind the finished app you can clone our repository into your own workspace. 

1. Go to https://c9.io/boosterstage
2. Click "Clone" under "issue-tracker"
3. Click "Create workspace"

## Quick start

1. Go to https://c9.io/boosterstage
2. Click "Clone" under "rails-5"
3. Click "Create workspace"


## Start a new app from scratch on Cloud9

1. Login to Cloud9
2. Click “Create a new workspace”
3. Give it a name, choose “Ruby”, then click “Create Workspace”

### Run a few upgrades

The default installation on Cloud9 ships with Rails 4.2, but we want to use the latest version of Rails, which is 5.1.4. 

```
gem install bundler
gem install rails
```

### Update the Gemfile

Change :

    gem 'rails', '~> 5.1.4'
    gem 'sqlite3', group: [:development, :test]
    gem 'pg', group: production
    gem 'coffee-rails', '~> 4.2'
    
    group :development do
      # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
      gem 'web-console', '>= 3.3.0'
      gem 'listen', '>= 3.0.5', '< 3.2'
      # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
      gem 'spring'
      gem 'spring-watcher-listen', '~> 2.0.0'
    end

Add

    gem 'puma', '~> 3.7'    

Now update the bundle

    bundle update    

### Upgrade Rails

    rails app:update

## Start the Server

Click “Run Project”


