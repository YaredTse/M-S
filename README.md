#### M-S Test Framework

##### This is a demonstrating how a Framework can be developed, with BDD, and Page Object model design pattern.

##### This test framework is set up in such a way that it works-out-of-the-box with minimum onfiguration required


## Prerequisite

Here's an a list of prerequisite in order to run the tests:

First thing you need to clone the project from github,

* [Test Framework Link(https://github.com/YaredTse/M-S.git)


### Chromdriver, 

If you you don't have Chromedriver installed, you might run into problems, 

I have chosen to run the test using Chrome because, I have chrome installed and I work predominatly on Chrome,  and in order to run the test you would need Chromedriver 

which you can find it here
* [Chromedriver Link](http://chromedriver.storage.googleapis.com/index.html?path=2.21/)


Open Terminal and place it under your bin directory

```ruby
mv ~/Downloads/chromedriver /usr/local/bin/
```

Once moved to the usr directory, then close Terminal completly and reopen.


### Ruby

The language I have chosen to use for this demonstration is Ruby.  Altough I could have used Java, I have picked up Ruby because it's compiled language hence I can prototype something very quickly.  And also the fact that it supports BDD in a very elegant way.  If you are using the latest Mac Book Pro, it should come wwith OS by default. 

```ruby
ruby '2.0.0'
```

Once you have ruby installed then please install bundler

```ruby
bundle install
```

The next step is to install Cucumber, as well as other dependencies, using bundler.

Change directory to root directory from where Gemfile is present, and execute the following command,

```ruby
cd M-S/test-ms
```

And now installing Gems.  Gems are essentially libraries in Java

```ruby
bundle install
```

At this point you should have eveything you need to run the test, and you can do 

## Basic usage

By this point you should have everything set up and ready to run test.  And in order to run it you should be under ** test/M-S/test-ms ** directory, and choose whichever flavour you prefer using from the following list. 

File by file 
- cucumber  features/simple_search.feature

Scenaryo by scenario
- cucumber  features/simple_search.feature:19

Entitre test suit
- cucumber  






