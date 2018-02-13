require 'rails_helper'

RSpec.describe UserProyect, type: :model do
  	it { should belong_to(:user) }
	it { should belong_to(:proyect) }
	it { should have_many(:tareas).dependent(:destroy) }
	it { should have_many(:acta).dependent(:destroy) }
end
