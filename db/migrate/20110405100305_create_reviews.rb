class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.text :content
      t.integer :video_id
      t.integer :person_id

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
