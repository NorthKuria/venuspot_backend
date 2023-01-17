class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :description
      t.integer :num_beds
      t.integer :num_baths
      t.string :location
      t.integer :manager_id

      t.timestamps
    end
  end
end
