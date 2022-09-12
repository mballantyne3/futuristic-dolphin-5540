class Mechanic < ApplicationRecord
  has_many :mechanics_rides
  has_many :rides, through: :mechanics_rides

  def self.total_average_years
    Mechanic.average(:years_experience)
  end
end
