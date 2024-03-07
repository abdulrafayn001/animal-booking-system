# spec/features/admin_index_spec.rb

require 'rails_helper'

RSpec.feature 'Admin Bookings Index Page', type: :feature do
  scenario 'Admin can view all bookings on the index page' do
    booking1 = FactoryBot.create(:booking, first_name: 'John', last_name: 'Doe', animal_name: 'Buddy', animal_type: 'dog', hours_requested: 3, date_of_service: Date.today + 5.days)
    booking2 = FactoryBot.create(:booking, first_name: 'Jane', last_name: 'Smith', animal_name: 'Fluffy', animal_type: 'cat', hours_requested: 4, date_of_service: Date.today + 7.days)

    # Assuming you have an admin user

    visit admin_bookings_path

    expect(page).to have_content('All Bookings')

    expect(page).to have_content('John')
    expect(page).to have_content('Doe')
    expect(page).to have_content('Buddy')
    expect(page).to have_content('dog')
    expect(page).to have_content('3')
    expect(page).to have_content((Date.today + 5.days).strftime('%Y-%m-%d'))
    expect(page).to have_content('50') # Adjust based on the exact Total Cost you expect for this booking

    expect(page).to have_content('Jane')
    expect(page).to have_content('Smith')
    expect(page).to have_content('Fluffy')
    expect(page).to have_content('cat')
    expect(page).to have_content('4')
    expect(page).to have_content((Date.today + 7.days).strftime('%Y-%m-%d'))
    expect(page).to have_content('40') # Adjust based on the exact Total Cost you expect for this booking
  end
end
