# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

  [
  {:name => "PHP" },
  {:name => "Rails" },
  {:name => "Ruby" },
  {:name => "CSS" },
  {:name => "HTML5" },
  {:name => "Miscellaneous" }
  ].each do |attrb|
    Category.find_or_create_by_name(attrb)
  end

 [
  {:title => "Learning CSS Basic", :category => "CSS", :description => "In this video, you will learn the basic of using the @font-face rule and how to include new fonts into your web pages", :path => "css_typography_01" },
  {:title => "Advanced CSS cource", :category => "CSS", :description => "In this video, you will learn more about using @font-face rule and including new fonts into your webpages", :path => "css_typography_02" },
  {:title => "HTML5 on the Way", :category => "HTML5", :description => "In this video, we will learn how to use the input elements. Using input in combination with the type attribute, we can create a wide variety of different form elements", :path => "html5_inputforms" },
  {:title => "Creating own Snippets", :category => "Miscellaneous", :description => "In this video, we explore how to create your own snippets to speed up your development", :path => "textmate_snippets" },
  {:title => "Setting MYSQL database Server in PHP", :category => "PHP", :description => "Here we get the MYSQL database server, and PhpMyAdmin database manager setup. We also create a database for our project, as well as create, mySQL user for the application to use to connect to the database", :path => "php_mysql_databasesetup" },
  {:title => "Calling YQL querries from PHP", :category => "PHP", :description => "YQL stands for Yahoo! Query Language. In this video we learn how to call YQL Queries from PHP pages.", :path => "php_yql" },
  {:title => "Associatians in ActiveRecords", :category => "Rails", :description => "This video teaches us about defining associations between models in ActiveRecords. We begin by planning our relationships, and generating a new model. ", :path => "active_records" },
  {:title => "Building web app using Sinatra", :category => "Ruby", :description => "Sinatra is awesome! We start building our first web application using Sinatra. We install the Sinatra Gem, create a simple web server, and learn about Ruby's Code Blocks. ", :path => "ruby_sinatra" },
  {:title => "Exploring RubyGems", :category => "Ruby", :description => "RubyGems is the default package manager for Ruby and everyone is taking it as the de facto standards for Rails WebApp Development. It allows you to download, install and use third party libraries using simple command for extending feature of your App. ", :path => "rubygems" }
  ].each do |attrb|
    Video.find_or_create_by_path(attrb)
  end

  [
    {:name => "admin", :email => "admin@sprout-tube.com", :password => "admingod" },
    {:name => "Kapil", :email => "kapil@sprout-tube.com", :password => "password" },
    {:name => "Prashiddha", :email => "prashiddha@sprout-tube.com", :password => "password" },
    {:name => "Dipesh", :email => "dipesh@sprout-tube.com", :password => "password" },
    {:name => "Chandra", :email => "chandra@sprout-tube.com", :password => "password" },
    {:name => "Dipil", :email => "dipil@sprout-tube.com", :password => "password" },
    {:name => "Abhaya", :email => "abhaya@sprout-tube.com", :password => "password" },
    {:name => "Manish", :email => "manish@sprout-tube.com", :password => "password" },
    {:name => "Prashvin", :email => "Prashvin@sprout-tube.com", :password => "password" }
  ].each do |attrb|
    Person.find_or_create_by_name(attrb)
  end