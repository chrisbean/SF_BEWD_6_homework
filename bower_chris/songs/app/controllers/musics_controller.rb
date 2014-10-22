class MusicsController < ApplicationController

  def index
  end

  def show
  end

  def new
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

  private
  def find_music
  	Music.find(params[:id])
  end

	def music_params
		params.require(:music).permit(:title, :text)
	end

end
