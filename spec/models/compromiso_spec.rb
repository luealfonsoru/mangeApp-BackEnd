require 'rails_helper'

RSpec.describe Compromiso, type: :model do
  it { should belong_to(:actum) }
  it { should validate_presence_of(:fecha)}
  it { should validate_presence_of(:nombre)}
  it { should validate_presence_of(:responsable)}
  it { should validate_presence_of(:done)}
end
