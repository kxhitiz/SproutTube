class ChangeColumnVideo < ActiveRecord::Migration
  def self.up
     change_column :videos, :hits, :integer, :default => 0
     change_column :videos, :likes, :integer, :default => 0
  end

  def self.down
    change_column :videos, :hits, :integer
    change_column :videos, :likes, :integer
  end
end
