class BarsController < ApplicationController
	def index
		@bars = Bar.all
	end

  def hood
    # params[:name]
    @bars = Bar.where(neighborhood: params[:name])
  end

  # def place
  #   @bar = Bar(params[:neighborhood])
  # end

	def show
  	@bar = find_bar
  end

  def new 
  	@bar = Bar.new
  end

  def create
  	@bar = Bar.new(bar_params)
  	if @bar.save
  		redirect_to @bar
  	else
  		render 'new'
  	end
  end

  def update
  	@bar = find_bar
  	if @bar.update(bar_params)
  		redirect_to bars_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@bar = find_bar
  	@bar.destroy

  	redirect_to bars_path
  end

	private
  def find_bar
  	Bar.find(params[:id])
  end

  def bar_params
  	params.require(:bar).permit(:name, :neighborhood)
  end
end
