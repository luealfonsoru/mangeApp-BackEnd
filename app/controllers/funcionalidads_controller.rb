class FuncionalidadsController < ApplicationController
		before_action :authenticate_user!, except: [ :index, :show]
	before_action :set_funcionalidad, only: [:show, :update, :destroy]

	#GET /funcionalidads

	def index
		@funcionalidad = Funcionalidad.all
		json_response(@funcionalidad)
	end

	#POST /funcionalidads
	def create
		@funcionalidad = Funcionalidad.create!(funcionalidad_params)
		json_response(@funcionalidad, :created)
	end

	#GET /funcionalidads/:id
	def show
		json_response(@funcionalidad)
	end

	#PUT /funcionalidads/:id
	def update
		@funcionalidad.update(funcionalidad_params)
	end

	#DELETE /funcionalidads/:id
	def destroy
		@funcionalidad.destroy
		head :no_content
	end

	private

	def funcionalidad_params
		params.permit(:name)
	end

	def set_funcionalidad
		@funcionalidad = Funcionalidad.find(params[:id])
	end
end
