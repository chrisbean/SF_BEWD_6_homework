class MusicsController < ApplicationController

  def index
  	@musics = Music.all
  end

  def show
  	#@music = find_music
  	@music = Music.find(params[:id])
  end

  def new
  	@music = Music.new
  end

  def create
  	@music = Music.new(music_params)

  	if @music.save
	  	redirect_to musics_path
	  else
	  	render 'new'
	  end
  end

  def edit
  	@music = find_music
  end

  def update
  	@music = find_music
  	if music.update(music_params)
  		redirect_to musics_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@music = find_music
  	@music.destroy
  	redirect_to musics_path
  end

  def find_music
  	Music.find(params[:id])
  end

  private


	def music_params
		params.require(:music).permit(:title, :text)
	end

end
