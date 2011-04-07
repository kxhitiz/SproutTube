class Video < ActiveRecord::Base
  has_many :reviews
  has_many :likes
  validates :category, :presence => true
  validates :path, :presence => true

  def self.search(search, page)
    all.paginate:per_page => 3, :page => page,
            :conditions => ['title LIKE ?', "%" + search + "%"],
            :order => 'created_at DESC'
  end
end
# == Schema Information
#
# Table name: videos
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  category    :string(255)
#  description :text
#  path        :string(255)
#  hits        :integer
#  likes       :integer
#  created_at  :datetime
#  updated_at  :datetime
#  review_id   :integer
#  tags        :string(255)
#

