require 'rails_helper'

RSpec.describe Tarea, type: :model do
	it { should belong_to(:cronograma) }
	it { should belong_to(:entregable) }
	it { should belong_to(:funcionalidad) }
	it { should belong_to(:user_proyect) }

	it { should validate_presence_of(:numero) }
	it { should validate_presence_of(:serial) }
	it { should validate_presence_of(:fecha) }
	it { should validate_presence_of(:horas) }
	it { should validate_presence_of(:descripcion) }
	it { should validate_presence_of(:solicitud) }
	it { should validate_presence_of(:estado) }
end
