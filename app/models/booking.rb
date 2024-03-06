class Booking < ApplicationRecord
  enum animal_type: { dog: 0, cat: 1 }
end
