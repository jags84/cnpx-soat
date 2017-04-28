class CreatePolicies < ActiveRecord::Migration[5.0]
  def change
    create_table :policies do |t|
      t.references :vehicle_type, foreign_key: true
      t.references :vehicle_sub_type, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :age
      t.integer :number_of_passengers
      t.float :engine_cylinder
      t.float :tons
      t.string :plate
      t.date :issue_date
      t.date :expiration_date
      t.float :commercial_rate
      t.float :premium
      t.float :fosyga
      t.float :runt
      t.float :total

      t.timestamps
    end
  end
end
