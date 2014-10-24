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

  	@song.save
  	redirect_to @song
  	# if @song.save
  	# 	redirect_to songs_path
  	# else
  	# 	render 'new'
  	# end

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
  	# params.permit(:song_name, :artist_name, :record_label)
  	params.require(:song_name).permit(:artist_name, :record_label)
	end
end
