class AddModelToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :model, :string
  end
end
