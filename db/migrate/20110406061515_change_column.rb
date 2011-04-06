class ChangeColumn < ActiveRecord::Migration
  def self.up
     change_column :people, :points, :integer, :default => 0
  end

  def self.down
    change_column :people, :points, :integer
  end
end
