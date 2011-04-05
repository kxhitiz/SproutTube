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
  {:name => "Ruby" }
  ].each do |attrb|
    Category.find_or_create_by_name(attrb)
  end