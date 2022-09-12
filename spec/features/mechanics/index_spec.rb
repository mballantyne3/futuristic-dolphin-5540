require 'rails_helper'

RSpec.describe 'mechanics index page' do
  before :each do
    @universal = AmusementPark.create!(name: 'Universal Studios', admission_cost: 80)
    @jaws = @universal.rides.create!(name: 'Jaws', thrill_rating: 5, open: true)
    @jurassic = @universal.rides.create!(name: 'Jurassic Park', thrill_rating: 8, open: true)
    @max = @jaws.mechanics.create!(name: 'Max', years_experience: 3)
    @mary = @jurassic.mechanics.create!(name: 'Mary', years_experience: 2)
    @ron = @jurassic.mechanics.create!(name: 'Ron', years_experience: 6)
  end

  it 'displays a list of all mechanics names and years of experience' do
    visit "/mechanics"

    expect(page).to have_content("All Mechanics")

    within "mechanic-#{@max.id}"
    expect(page).to have_content("Name: Max")
    expect(page).to have_content("Years of Experience: 3")

    within "mechanic-#{@mary.id}"
    expect(page).to have_content("Name: Mary")
    expect(page).to have_content("Years of Experience: 2")

    within "mechanic-#{@ron.id}"
    expect(page).to have_content("Name: Ron")
    expect(page).to have_content("Years of Experience: 6")
  end

  it 'displays an average years of experience across all mechanics' do
    visit "/mechanics"

    within "#averageYears"
    expect(page).to have_content(3.66)
  end
end
