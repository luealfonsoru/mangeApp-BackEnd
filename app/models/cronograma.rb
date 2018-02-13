class Cronograma < ApplicationRecord
	has_many :tareas , dependent: :destroy

	validates_presence_of :name
end
