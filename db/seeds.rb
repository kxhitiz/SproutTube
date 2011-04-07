# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

  [
  {:name => "Perl" },
  {:name => "PHP" },
  {:name => "Rails" },
  {:name => "Java" },
  {:name => "Python" },
  {:name => "Ruby" },
  {:name => "ASP" },
  {:name => "JSP" },
  {:name => "Wordpress" },
  {:name => "Drupal" },
  {:name => "Joomla" },
  {:name => "Magento" }
  ].each do |attrb|
    Category.find_or_create_by_name(attrb)
  end


 [
  {:title => "Perl is Great", :category => "Perl", :description => "Perl is happening", :path => "localhost" },
  {:title => "Rails is Great", :category => "Rails", :description => "Rails is happening", :path => "localhost" },
  {:title => "Java is Great", :category => "Java", :description => "Java is happening", :path => "localhost" },
  {:title => "PHP is Great", :category => "PHP", :description => "PHP is happening", :path => "localhost" },
  {:title => "Python is Great", :category => "Python", :description => "Python is happening", :path => "localhost" },
  ].each do |attrb|
    Video.find_or_create_by_title(attrb)
  end


  [
  {:name => "admin", :email => "admin@sprout-tube.com", :password => "admingod" }
  ].each do |attrb|
    Person.find_or_create_by_name(attrb)
  end

