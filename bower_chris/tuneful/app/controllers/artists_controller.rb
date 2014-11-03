class ArtistsController < ApplicationController
  def index
  	@artists = Artist.all
  end

  def show
    @artist = find_artistsongs
    @songs = @artist.songs
  end

  def new
  	@artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

  	if @artist.save
  		redirect_to @artist
  	else
  		render 'new'
  	end
  end

  def edit
  	@artist = Artist.find(params[:id])
  end

  def update
    @artist = find_artist
    if @artist.update(artist_params)
  		redirect_to artists_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@artist = Artist.find(params[:id])
  	@artist.destroy
  	redirect_to artists_path
  end

  private
  #attributes that you want people to update must be permitted
  def find_artist
    Artist.find(params[:id])
  end
  def artist_params
    params.require(:artist).permit(:name, :sang, :info, :label_id)
  end
end
