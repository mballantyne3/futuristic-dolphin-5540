require 'rails_helper'

RSpec.describe Mechanic, type: :model do
  describe 'relationships' do
    it { should have_many(:rides) }
  end

  it 'calculates average years experience of all mechanics' do
    @universal = AmusementPark.create!(name: 'Universal Studios', admission_cost: 80)
    @jaws = @universal.rides.create!(name: 'Jaws', thrill_rating: 5, open: true)
    @jurassic = @universal.rides.create!(name: 'Jurassic Park', thrill_rating: 8, open: true)
    @max = @jaws.mechanics.create!(name: 'Max', years_experience: 3)
    @mary = @jurassic.mechanics.create!(name: 'Mary', years_experience: 4)
    @ron = @jurassic.mechanics.create!(name: 'Ron', years_experience: 5)

      expect(Mechanic.total_average_years).to eq(4)
    end
  end

