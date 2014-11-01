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
  		redirect_to @song
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
  	if @song.update(song_params)
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
  #attributes that you want people to update must be permitted
  def find_song
    Song.find(params[:id])
  end
  
  def song_params
    params.require(:song).permit(:singer, :company, :tune)
  end
end
