class Booking < ApplicationRecord
  enum animal_type: { dog: 0, cat: 1 }

  validates :first_name, :last_name, :animal_name, :animal_type, :hours_requested, :date_of_service, presence: true
  validates :hours_requested, numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 8 }

  def calculate_cost
    PricingEngine.calculate_cost(animal_type, hours_requested)
  end
end
