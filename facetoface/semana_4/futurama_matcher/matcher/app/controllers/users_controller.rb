class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def show
		begin
		@user = User.find params[:id]
		@users = @user.match_user
		rescue ActiveRecord::RecordNotFound
			render 'no_users_found'
		end
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save
			redirect_to @user
		else
			render 'new'
		end
	end

	private
	def project_params
		params.require(:user).permit(:name, :age, :food, :pet, :program)
	end
end