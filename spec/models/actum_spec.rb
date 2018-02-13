require 'rails_helper'

RSpec.describe Actum, type: :model do
  it { should have_many(:compromisos).dependent(:destroy) }
  it { should belong_to(:user_proyect) }
  it { should validate_presence_of(:fecha)}
  it { should validate_presence_of(:nombre)}
  it { should validate_presence_of(:consecutivo)}
end
