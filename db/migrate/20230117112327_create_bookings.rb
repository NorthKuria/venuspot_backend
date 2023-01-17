class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :num_guest
      t.integer :user_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
