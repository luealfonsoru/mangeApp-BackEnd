require 'rails_helper'

RSpec.describe Proyect, type: :model do
  it { should have_many(:user_proyects).dependent(:destroy) }
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:number)}
  it { should validate_presence_of(:start)}
  it { should validate_presence_of(:end)} 
end
