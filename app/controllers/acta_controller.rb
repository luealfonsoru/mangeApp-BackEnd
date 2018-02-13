class ActaController < ApplicationController
	before_action :authenticate_user!, except: [ :index, :show]
	before_action :set_actum, only: [:show, :update, :destroy]

	#GET /acta

	def index
		@actum = Actum.all
		json_response(@actum)
	end

	#POST /acta
	def create
		@actum = Actum.create!(actum_params)
		json_response(@actum, :created)
	end

	#GET /acta/:id
	def show
		json_response(@actum)
	end

	#PUT /acta/:id
	def update
		@actum.update(actum_params)
	end

	#DELETE /acta/:id
	def destroy
		@actum.destroy
		head :no_content
	end

	private

	def actum_params
		params.permit(:nombre,:fecha,:consecutivo,:user_proyect_id)
	end

	def set_actum
		@actum = Actum.find(params[:id])
	end

end