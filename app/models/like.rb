class Like < ActiveRecord::Base
  belongs_to :person
  belongs_to :video
  validates :person_id, :presence => true
  validates :video_id, :presence => true
end
