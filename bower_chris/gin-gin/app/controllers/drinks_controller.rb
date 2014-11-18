class DrinksController < ApplicationController
	def index
		@drinks = Drink.search(params[:search])
	end

	def show
  	@drink = find_drink
  end

  def new 
  	@drink = Drink.new
  end

  def create
  	@drink = Drink.new(drink_params)
  	if @drink.save
  		redirect_to @drink
  	else
  		render 'new'
  	end
  end

  def edit
  	@drink = find_drink
  end

  def update
  	@drink = find_drink
  	if @drink.update(drink_params)
  		redirect_to drinks_path
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@drink = find_drink
  	@drink.destroy

  	redirect_to drinks_path
  end


  private
  def find_drink
  	Drink.find(params[:id])
  end

  def drink_params
  	params.require(:drink).permit(:name, :list, :profile, :glass, :glass_img, :price, :bar_id, :avatar)
  end

end
