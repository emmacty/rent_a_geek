class AddYearOfProductionToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :year_of_production, :integer
  end
end
