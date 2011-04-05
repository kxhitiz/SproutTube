class Review < ActiveRecord::Base
  belongs_to :person
  belongs_to :video
end

# == Schema Information
#
# Table name: reviews
#
#  id         :integer         not null, primary key
#  content    :text
#  video_id   :integer
#  person_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

