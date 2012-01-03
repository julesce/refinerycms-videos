# Refinery CMS Videos

Simple videos engine for [Refinery CMS](http://refinerycms.com). 

This version of `refinerycms-videos` supports Rails 3.0.x.

## Requirements

Refinery CMS version 1.0.0 or above.

## Install

Open up your ``Gemfile`` and add the following:

    gem 'refinerycms-videos', '1.0', :git => 'git://github.com/julesce/refinerycms-videos.git'

Now, run:

    bundle install

Next, run:

    rails generate refinerycms_videos

Finally migrate your database and you're done.

    rake db:migrate