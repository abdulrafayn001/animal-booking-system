class PricingEngine
  BASE_CHARGE = 20

  def self.calculate_cost(animal_type, hours_requested)
    additional_charge = animal_type == 'dog' ? 10 : 5
    total_cost = BASE_CHARGE + (hours_requested * additional_charge)
    total_cost
  end
end
