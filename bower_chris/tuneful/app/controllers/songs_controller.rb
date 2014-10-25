class SongsController < ApplicationController
def index
  	@songs = Song.all
  end

  def show
  	@song = find_song
  	# or @song = Songs.find(params[:id])
  end

  def new
  	@song = Song.new
  end

  def create
  	@song = Song.new(song_params)

  	if @song.save
  		redirect_to songs_path
  	else
  		render 'new'
  	end

  	# render plain: params[:song].inspect
  end

  def edit
  	@song = find_song
  end

  def update
  	@song = find_song
  	if song.update(song_params)
  		redirect_to songs_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@song = find_song
  	@song.destroy
  	redirect_to songs_path
  end

  private
  def find_song
  	Song.find(params[:id])
  end

  def song_params
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
