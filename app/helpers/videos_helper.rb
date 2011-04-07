module VideosHelper
  def recommended_videos(video)
    @rec_videos = Video.find(:all, :order => 'hits DESC', :conditions => ['category = ?', video.category]).first(5)
  end

  def recent_videos(video)
    @rec_videos = Video.find(:all, :order => 'created_at DESC').first(5)
  end

end
