class AddColumn < ActiveRecord::Migration
  def self.up
    add_column(:people, :name, :string)
    add_column(:people, :points, :integer)
    add_column(:people, :review_id, :integer)
  end

  def self.down
    remove_column(:people, :name, :string)
    remove_column(:people, :points, :integer)
    remove_column(:people, :review_id, :integer)
  end
end
