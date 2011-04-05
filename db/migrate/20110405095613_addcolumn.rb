class Addcolumn < ActiveRecord::Migration
  def self.up
    add_column(:videos, :review_id, :integer)
  end

  def self.down
     remove_column(:videos, :review_id, :integer)
  end
end
