module VideosHelper
  def recommended_video(video)
    @rec_videos = Video.find(:all, :order => 'hits DESC', :conditions => ['category = ?', video.category]).first(5)
  end
end
