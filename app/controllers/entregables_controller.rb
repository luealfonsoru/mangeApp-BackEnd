class EntregablesController < ApplicationController
		before_action :authenticate_user!, except: [ :index, :show]
	before_action :set_entregable, only: [:show, :update, :destroy]

	#GET /entregables

	def index
		@entregable = Entregable.all
		json_response(@entregable)
	end

	#POST /entregables
	def create
		@entregable = Entregable.create!(entregable_params)
		json_response(@entregable, :created)
	end

	#GET /entregables/:id
	def show
		json_response(@entregable)
	end

	#PUT /entregables/:id
	def update
		@entregable.update(entregable_params)
	end

	#DELETE /entregables/:id
	def destroy
		@entregable.destroy
		head :no_content
	end

	private

	def entregable_params
		params.permit(:name)
	end

	def set_entregable
		@entregable = Entregable.find(params[:id])
	end
end
