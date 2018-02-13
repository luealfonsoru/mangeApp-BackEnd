class TareasController < ApplicationController
		before_action :authenticate_user!, except: [ :index, :show]
	before_action :set_tarea, only: [:show, :update, :destroy]

	#GET /tareas

	def index
		@tarea = Tarea.all
		json_response(@tarea)
	end

	#POST /tareas
	def create
		@tarea = Tarea.create!(tarea_params)
		json_response(@tarea, :created)
	end

	#GET /tareas/:id
	def show
		json_response(@tarea)
	end

	#PUT /tareas/:id
	def update
		@tarea.update(tarea_params)
	end

	#DELETE /tareas/:id
	def destroy
		@tarea.destroy
		head :no_content
	end

	private

	def tarea_params
		params.permit(:numero, :serial, :user_proyect_id, :fecha, :semana, :horas, :funcionalidad_id, :cronograma_id, :entregable_id,:descripcion,:solicitud,:estado,:user_id,:review,:review_description)
	end

	def set_tarea
		@tarea = Tarea.find(params[:id])
	end
end
