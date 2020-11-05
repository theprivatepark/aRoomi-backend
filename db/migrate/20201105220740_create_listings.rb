class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :price
      t.text :description
      t.string :address
      t.integer :college_id

      t.timestamps
    end
  end
end
