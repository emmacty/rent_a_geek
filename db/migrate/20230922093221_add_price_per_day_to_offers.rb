class AddPricePerDayToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :price_per_day, :decimal
  end
end
