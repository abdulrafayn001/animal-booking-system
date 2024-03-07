class AddConstraintsToBookings < ActiveRecord::Migration[7.1]
  def up
    change_column :bookings, :first_name, :string, null: false
    change_column :bookings, :last_name, :string, null: false
    change_column :bookings, :animal_name, :string, null: false
    change_column :bookings, :animal_type, :integer, null: false
    change_column :bookings, :hours_requested, :integer, null: false
    change_column :bookings, :date_of_service, :date, null: false
  end

  def down
    change_column :bookings, :first_name, :string, null: true
    change_column :bookings, :last_name, :string, null: true
    change_column :bookings, :animal_name, :string, null: true
    change_column :bookings, :animal_type, :integer, null: true
    change_column :bookings, :hours_requested, :integer, null: true
    change_column :bookings, :date_of_service, :date, null: true
  end
end
