class Tarea < ApplicationRecord
  belongs_to :user_proyect
  belongs_to :funcionalidad
  belongs_to :cronograma
  belongs_to :entregable
  belongs_to :user

  validates_presence_of :numero, :serial, :fecha, :horas, :descripcion, :solicitud, :estado, :review
end
