# Marskal Bootstrap Generators

marskal-bootstrap-generators provides [Twitter Bootstrap](http://getbootstrap.com/) generators for Rails 4. Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites.

    Note: This version will also stub in a simple bootstrap navigation system, with a log out button for the devise gem. Feel free to customize or remove this navigation bar as needed.

## Current Twitter Bootstrap version

The current supported version of Twitter Bootstrap is 3.3.5.

## Installing Gem

In your Gemfile, add this line:

    gem 'marskal-bootstrap-generators', '~> 3.3.5'

Or you can install from latest build:

    gem 'marskal-bootstrap-generators', git: 'git://github.com/MarskalGroup/marskal-bootstrap-generators.git'

Run bundle install:

    bundle install

## Generators

Get started:

    rails generate bootstrap:install

To overwrite files that already exist, pass the `--force` (`-f`) option.

Once you've done that, any time you generate a controller or scaffold, you'll get [Bootstrap](http://twitter.github.com/bootstrap/) templates.

### Give it a try

    rails generate scaffold post title body:text published:boolean

## Usage

To print the options and usage run the command `rails generate bootstrap:install --help`

    Usage:
      rails generate bootstrap:install [options]

    Options:
        N/A

    Runtime options:
      -f, [--force]                    # Overwrite files that already exist
      -p, [--pretend], [--no-pretend]  # Run but do not make any changes
      -q, [--quiet], [--no-quiet]      # Suppress status output
      -s, [--skip], [--no-skip]        # Skip files that already exist

    Copy MarskalBootstrapGenerators default files

### Options

#### Template engines

Supported template engines:

* ERB

#### Stylesheet engines

Supported stylesheet engines:

* SCSS

##### SCSS

Make sure you have `sass-rails` dependency on your Gemfile:

    gem 'sass-rails'

And then run:

    rails generate bootstrap:install 

Now you can customize the look and feel of Bootstrap.

## Assets

    custom tweaks to the styles will be place in:
       apps/assets/stylesheets/marskal-bootstrap-generators
    
    Be sure to include this file in your application.scss files

### Javascript

Select all jQuery plugins (`app/assets/javascripts/bootstrap.js`)

    //= require bootstrap

Or quickly add only the necessary javascript (Transitions: required for any animation; Popovers: requires Tooltips)

    //= require bootstrap/collapse
    //= require bootstrap/modal
    //= require bootstrap/button
    //= require bootstrap/affix
    //= require bootstrap/tab
    //= require bootstrap/alert
    //= require bootstrap/transition
    //= require bootstrap/tooltip
    //= require bootstrap/popover
    //= require bootstrap/scrollspy
    //= require bootstrap/dropdown
    //= require bootstrap/carousel


## Customizing Templates

Since Bootstrap Generators installs its templates under lib/templates, you can go and customize them.

## Credits

* [Twitter Bootstrap](http://getbootstrap.com)
