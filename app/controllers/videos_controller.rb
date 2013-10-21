class VideosController < ApplicationController
 def index
    @video = Video.all	
  end	

  def show
  	@video = Video.find(params{:id})
  end

  def new
  	@video = Video.new
  end

  def create
    @video = Video.create(video_params)
    redirect_to root_path
  end	

  private
  
  def video_params
    params.require(:video).permit(:video_link, :song, :description,:submitted_by, :submitter_id, :artist)
  end
end
