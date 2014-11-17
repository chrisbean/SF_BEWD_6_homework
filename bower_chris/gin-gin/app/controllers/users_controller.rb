class UsersController < ApplicationController
	def index
		@user = User.all
	end

	def show
		@user = find_user
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	def edit
		@user = find_user
	end

	def update
		@user = find_user
		if @user.update(user_params)
			redirect_to user_path
		else 
			render 'edit'
		end
	end

	def destroy
		@user = find_user
		@user.destroy

		redirect_to user_path
	end

	private
	def find_user
		User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:email)
	end

end
