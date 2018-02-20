class ProyectsController < ApplicationController
	before_action :authenticate_user!, except: [ :index, :show, :create]
	before_action :set_proyect, only: [:show, :update, :destroy]

	#GET /proyects

	def index
		@proyect = Proyect.all
		json_response(@proyect)
	end

	#POST /proyects
	def create
		@proyect = Proyect.create!(proyect_params)
		json_response(@proyect, :created)
	end

	#GET /proyects/:id
	def show
		json_response(@proyect)
	end

	#PUT /proyects/:id
	def update
		@proyect.update(proyect_params)
	end

	#DELETE /proyects/:id
	def destroy
		@proyect.destroy
		head :no_content
	end

	private

	def proyect_params
		params.permit(:name, :number, :start, :end, :description)
	end

	def set_proyect
		@proyect = Proyect.find(params[:id])
	end

end
