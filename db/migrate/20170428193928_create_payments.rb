class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :policy, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :number_of_quotes
      t.string :credit_card_terminal

      t.timestamps
    end
  end
end
