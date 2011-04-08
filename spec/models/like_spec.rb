require 'spec_helper'

describe Like do
   it { should belong_to :person }
   it { should belong_to :video }
   it { should validate_presence_of(:video_id) }
   it { should validate_presence_of(:person_id) }
end