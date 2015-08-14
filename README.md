****README****

#Introduction
This is an app that allows users to locate, add, and rank public workspaces that offer free wifi.  
Some notable features:

-Use of Devise gem for authentication
* Search by category
* Search by location
* View location on Google maps

#Requirements
This code has been run and tested on Ruby 2.2.1 and Rails 4.2.3 using PostgressSQL. Support is not available for other versions of Ruby or Rails

#Installation

-Clone files from https://github.com/skey08/wifinder.git
-On the command line in your terminal run $ git clone https://github.com/skey08/wifinder.git
-cd to the wifinder directory
-Inside the directory run $ bundle install  
-To clear out any potential databse conflicts run $ rake db:drop
-Then recreate the database by running $ rake db:create
-Run a migration by using $ rake db:migrate
-To start off with some data in the database run $ rake db:seed
-To start the server run $ rails s

To view the app in your internet browser go to localhost:3000

#Support
Users looking for support should file an issue on the GitHub issue tracking page https://github.com/skey08/wifinder/issues,
or file a pull request (https://github.com/skey08/wifinder/pulls) if you have a fix available.
