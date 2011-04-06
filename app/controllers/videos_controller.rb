class VideosController < ApplicationController
  before_filter :authorize, :except => [:index, :show]
  def index
    if params[:search]
      @videos = Video.find(:all, :conditions => ['title LIKE ?', "%#{params[:search]}%"])
    else
      @videos = Video.find(:all)
    end
  end

  def show
    @video = Video.find(params[:id])
    @review = @video.reviews.new
    @reviews = @video.reviews
    respond_to do |format|
      format.html {render :layout => 'video_show_layout'}
    end
  end

  def create
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(params[:video])
      redirect_to video_path(@video), :notice => "Video Updated Successfully"
    else
      render :action => "edit", :alert => "Video Update Failed!!"
    end

  end

  def create
    @video = Video.new(params[:video])
    if @video.save
      redirect_to video_path(@video), :notice => "Video Submitted Successfully"
    else
      render :action => "new", :alert => "Video Submission Failed!!"
    end
  end

  def new
    @video = Video.new
  end

end

