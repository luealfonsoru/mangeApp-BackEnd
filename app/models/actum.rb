class Actum < ApplicationRecord
	has_many :compromisos, dependent: :destroy
	belongs_to :user_proyect
	validates_presence_of :fecha, :nombre, :consecutivo
end
