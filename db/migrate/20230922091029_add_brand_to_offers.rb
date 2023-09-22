class AddBrandToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :brand, :string
  end
end
