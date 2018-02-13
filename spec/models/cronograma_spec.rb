require 'rails_helper'

RSpec.describe Cronograma, type: :model do
  it { should have_many(:tareas).dependent(:destroy) }

  it { should validate_presence_of(:name) }
end
