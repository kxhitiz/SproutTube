module HomeHelper
  def review_count(video)
    Review.find(:all, :conditions => ['video_id = ?', video.id]).count
  end
end
