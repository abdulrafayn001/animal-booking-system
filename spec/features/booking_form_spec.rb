require 'rails_helper'

RSpec.feature 'Booking Form', type: :feature do
  scenario 'User can submit a valid booking form' do
    visit new_booking_path

    fill_in 'First name', with: 'John'
    fill_in 'Last name', with: 'Doe'
    fill_in 'Animal name', with: 'Buddy'
    select 'dog', from: 'Animal type'
    fill_in 'Hours requested', with: 3
    fill_in 'Date of service', with: (Date.today + 5.days).strftime('%Y-%m-%d')

    click_button 'Submit'

    expect(page).to have_content(I18n.t('controllers.bookings.create.success'))
  end

  scenario 'User cannot submit an invalid booking form' do
    visit new_booking_path

    # Leave the form fields empty or provide invalid data
    click_button 'Submit'


    expect(page).to have_content(I18n.t('controllers.bookings.create.error'))
    expect(page).to have_content(I18n.t('activerecord.errors.messages.blank'))
  end
end
