class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :password_digest
      t.string :picture
      t.integer :listing_id
      t.text :biography
      t.boolean :has_pets
      t.boolean :smoker
      t.string :allergies
      t.text :weekend_activities
      t.string :gender
      t.integer :age
      t.string :able_to_meet_payments

      t.timestamps
    end
  end
end
