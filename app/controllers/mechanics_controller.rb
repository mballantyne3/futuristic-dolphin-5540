class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
    @total_average = Mechanic.total_average_years
  end
end
