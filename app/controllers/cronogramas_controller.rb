class CronogramasController < ApplicationController
		before_action :authenticate_user!, except: [ :index, :show]
	before_action :set_cronograma, only: [:show, :update, :destroy]

	#GET /cronogramas

	def index
		@cronograma = Cronograma.all
		json_response(@cronograma)
	end

	#POST /cronogramas
	def create
		@cronograma = Cronograma.create!(cronograma_params)
		json_response(@cronograma, :created)
	end

	#GET /cronogramas/:id
	def show
		json_response(@cronograma)
	end

	#PUT /cronogramas/:id
	def update
		@cronograma.update(cronograma_params)
	end

	#DELETE /cronogramas/:id
	def destroy
		@cronograma.destroy
		head :no_content
	end

	private

	def cronograma_params
		params.permit(:name)
	end

	def set_cronograma
		@cronograma = Cronograma.find(params[:id])
	end
end
