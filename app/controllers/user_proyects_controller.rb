class UserProyectsController < ApplicationController
	before_action :authenticate_user!, except: [ :index, :show]
	before_action :set_user_proyect, only: [:show, :update, :destroy]

	#GET /user_proyects

	def index
		@user_proyect = UserProyect.all
		json_response(@user_proyect)
	end

	#POST /user_proyects
	def create
		@user_proyect = UserProyects.create!(user_proyect_params)
		json_response(@user_proyect, :created)
	end

	#GET /user_proyects/:id
	def show
		json_response(@user_proyect)
	end

	#PUT /user_proyects/:id
	def update
		@user_proyect.update(user_proyect_params)
	end

	#DELETE /user_proyects/:id
	def destroy
		@user_proyect.destroy
		head :no_content
	end

	private

	def user_proyect_params
		params.permit(:tarea_id,:acta_id)
	end

	def set_user_proyect
		@user_proyect = UserProyects.find(params[:id])
	end
end
