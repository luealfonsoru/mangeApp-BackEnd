require 'rails_helper'

RSpec.describe Funcionalidad, type: :model do
  it { should have_many(:tareas).dependent(:destroy) }

  it { should validate_presence_of(:name) }
end
