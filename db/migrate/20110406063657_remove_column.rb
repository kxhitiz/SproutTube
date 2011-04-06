class RemoveColumn < ActiveRecord::Migration
  def self.up
    remove_column(:videos, :review_id)
    remove_column(:people, :review_id)
  end

  def self.down
    add_column(:videos, :review_id, :integer)
    add_column(:people, :review_id, :integer)
  end
end
