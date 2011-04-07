class HomeController < ApplicationController
  def index
    @categories = Category.all
    @most_watched_videos = Video.order('hits DESC').limit(5)
    @most_active_users = Person.order('points DESC').limit(5)
     respond_to do |format|
        format.html {render :layout => 'home_page_layout'}
      end
  end

end
