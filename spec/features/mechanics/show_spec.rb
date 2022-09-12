require 'rails_helper'

RSpec.describe 'mechanics show page' do
  before :each do
    @universal = AmusementPark.create!(name: 'Universal Studios', admission_cost: 80)
    @jaws = @universal.rides.create!(name: 'Jaws', thrill_rating: 5, open: true)
    @jurassic = @universal.rides.create!(name: 'Jurassic Park', thrill_rating: 8, open: true)
    @max = @jaws.mechanics.create!(name: 'Max', years_experience: 3)
    @mary = @jurassic.mechanics.create!(name: 'Mary', years_experience: 2)
    @ron = @jurassic.mechanics.create!(name: 'Ron', years_experience: 6)
  end

  # As a user,
  #   When I visit a mechanic show page
  # I see their name, years of experience, and the names of rides they’re working on
  # And I only see rides that are open
  # And the rides are listed by thrill rating in descending order (most thrills first)

  it 'displays mechanics name, years of experience, and ride names they are working on' do
    visit "/mechanics/"
  end
end
