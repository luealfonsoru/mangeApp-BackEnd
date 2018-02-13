class Proyect < ApplicationRecord
	has_many :user_proyects, dependent: :destroy
	validates_presence_of :name, :number, :start, :end
end
