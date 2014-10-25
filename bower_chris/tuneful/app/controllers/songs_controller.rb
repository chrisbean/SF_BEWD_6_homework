class SongsController < ApplicationController
def index
  	@songs = Song.all
  end

  def show
  	@song = Song.find(params[:id])
  	# or @song = Songs.find(params[:id])
  end

  def new
  	@song = Song.new
  end

  def create
  	@song = Song.new(song_params)
    # @song.tune = params[:tune]

  	if @song.save
  		redirect_to songs_path
  	else
  		render 'new'
  	end
  	# render plain: params[:song].inspect
  end

  def edit
  	@song = Song.find(params[:id])
  end

  def update
  	@song = Song.find(params[:id])
  	if song.update(song_params)
  		redirect_to songs_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@song = Song.find(params[:id])
  	@song.destroy
  	redirect_to songs_path
  end

  private

  def song_params
    params.require(:tune).permit(:singer, :company)

    ## error: param is missing or the value is empty: tune
    ## server: Completed 400 Bad Request
    # params.require(:tune).permit(:singer, :company, :song => [])

    ## error: param is missing or the value is empty: tune
    ## server: Completed 400 Bad Request
    # params.require(:tune).permit!
    
    ## error: param is missing or the value is empty: tune
    ## server: Unpermitted parameters: utf8, authenticity_token, song, commit
    # params.require(:tune).permit(:singer, :company)
    
    ## just adds empty id to db
    ## server: Completed 200 OK
    # params.permit(:tune, :singer, :company, :song => [])
  end
end
