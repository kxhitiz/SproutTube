class AddTagsToVideo < ActiveRecord::Migration
  def self.up
    add_column :videos, :tags, :string
  end

  def self.down
    remove_column :videos, :tags
  end
end
