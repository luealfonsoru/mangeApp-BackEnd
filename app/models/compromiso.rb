class Compromiso < ApplicationRecord
  belongs_to :actum
  validates_presence_of :fecha, :nombre, :responsable, :done
end
