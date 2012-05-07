# Refinery CMS Videos

Simple videos engine for [Refinery CMS](http://refinerycms.com). 

This version of `refinerycms-videos` supports Rails 3.1.x and up.

## Requirements

Refinery CMS version 2.0.x.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-videos', '~> 2.0.1'

Now, run:

    bundle install

Next, run:

    rails generate refinery:videos

Migrate your database:

    rake db:migrate

And hook up the seed data:

    rake db:seed