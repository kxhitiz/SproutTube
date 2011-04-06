class ReviewsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @video = Video.find(params[:video_id])
    @review = @video.reviews.new
  end

  def create
    @video = Video.find(params[:video_id])
    if @review= @video.reviews.create(params[:review])
      redirect_to videos_path, :notice => "Great! You Just Made a Review"
    else
      render :action => "new", :alert => "Oops! Unable to Post Review Right Now!"
    end
  end

  def update
  end

  def edit
  end

end

