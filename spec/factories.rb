FactoryBot.define do
  factory :booking do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    animal_name { Faker::Creature::Animal.name }
    animal_type { Booking.animal_types.keys.sample }
    hours_requested { Faker::Number.between(from: 2, to: 8) }
    date_of_service { Faker::Date.forward(days: 10) }
  end
end
