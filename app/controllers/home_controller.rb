class HomeController < ApplicationController
  def index
    @categories = Category.all
    @most_watched_videos = Video.order('hits DESC').limit(5)
    @most_active_users = Person.order('points DESC').limit(5)
  end

end
