### M-S Test Framework

##### This is a tees coverage demonstrating a simple BDD Framework, on how a UI Automation test Framerork can be developed and maintained using the Page Object model design pattern

##### This test framework is set up in ssuch a way that it works-out-of-the-box with minimum onfiguration required


You should have Chromedriver installed 

## prerequisite

Here's an a list of prerequisite in order to run the tests:


### Chromdriver,   

I have chosen to run the test using Chrome because, I have chrome installed and I work predominatly on Chrome,  and in order to run the test you would need Chromedriver 

which you can find it here
* [Chromedriver Link](http://chromedriver.storage.googleapis.com/index.html?path=2.21/)


Open Terminal and place it under your bin directory

```ruby
mv ~/Downloads/chromedriver /usr/local/bin/
```

Once moved to the usr directory, then close Terminal completly and reopen.


The language I have chosen to use for this demonstration is Ruby.  Altough I could have used Java, I have picked up Ruby because it's compiled language hence I can prototype something very quickly.  And also the fact that it supports BDD in a very elegant way. 

```ruby
ruby '2.0.0'
```

Once you have ruby installed then please install bundler

```ruby
bundle install
```

The next step is to install Cucumber it's self as well as  other dependencies, using bundler

change directory to root directory from where Gemfile is present, and execute the following command,

```ruby
cd M-S/test-ms
```

And now installing Gems.  Gems are essentially libraries in Java

```ruby
bundle install
```

At this point you should have eveything you need to run the test, and you can do 

## Basic usage


