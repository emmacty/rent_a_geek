class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.integer :price
      t.string :description
      t.string :title
      t.date :date
      t.string :status
      t.integer :experience
      t.string :profession
      t.string :localisation

      t.timestamps
    end
  end
end
