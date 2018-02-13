class UsersController < ApplicationController
	before_action :set_user, only: [:show, :update, :destroy]

	#GET /users
	def index
		@user = User.all
		json_response(@user)
	end

	#POST /users
	def create
		@user = User.create!(user_params)
		json_response(@user, :created)
	end

	#GET /users/:id
	def show
		json_response(@user)
	end

	#PUT /users/:id
	def update
		@user.update(user_params)
	end

	#DELETE /users/:id
	def destroy
		@user.destroy
		head :no_content
	end
	private

	def user_params
		params.require(:user).permit(:name,:image)
	end

	def set_user
		@user = User.find(params[:id])
	end
end
