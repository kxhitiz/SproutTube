require 'spec_helper'

describe Review do
  it { should belong_to :video }
  it { should belong_to :person }
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

