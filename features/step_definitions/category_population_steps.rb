Given /^category is populated$/ do
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
end