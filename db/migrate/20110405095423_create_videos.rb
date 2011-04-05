class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :path
      t.integer :hits
      t.integer :likes

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
