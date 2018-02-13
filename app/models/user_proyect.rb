class UserProyect < ApplicationRecord
  belongs_to :user
  belongs_to :proyect
  has_many :tareas , dependent: :destroy
  has_many :acta, dependent: :destroy
end
