class ReviewsController < ApplicationController
  before_filter :authorize_review
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
    @person_id = current_person.id
    @review = @video.reviews.new(params[:review])
    @review.person_id = @person_id
    calculate_points(@review,@person_id)
    if @review.save
      redirect_to video_path(@video), :notice => "Great! You Just Made a Review"
    else
      render :action => "new", :alert => "Oops! Unable to Post Review Right Now!"
    end
  end

  def update
  end

  def edit
  end

end

