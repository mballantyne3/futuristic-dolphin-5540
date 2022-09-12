class Mechanic < ApplicationRecord
  has_many :rides

  def self.total_average_years
    Mechanic.average(:years_experience)
  end
end
