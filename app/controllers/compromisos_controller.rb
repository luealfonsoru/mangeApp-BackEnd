class CompromisosController < ApplicationController
		before_action :authenticate_user!, except: [ :index, :show]
	before_action :set_compromiso, only: [:show, :update, :destroy]

	#GET /compromisos

	def index
		@compromiso = Compromiso.all
		json_response(@compromiso)
	end

	#POST /compromisos
	def create
		@compromiso = Compromiso.create!(compromiso_params)
		json_response(@compromiso, :created)
	end

	#GET /compromisos/:id
	def show
		json_response(@compromiso)
	end

	#PUT /compromisos/:id
	def update
		@compromiso.update(compromiso_params)
	end

	#DELETE /compromisos/:id
	def destroy
		@compromiso.destroy
		head :no_content
	end

	private

	def compromiso_params
		params.permit(:name, :number, :start, :end, :description)
	end

	def set_compromiso
		@compromiso = Compromiso.find(params[:id])
	end
end
