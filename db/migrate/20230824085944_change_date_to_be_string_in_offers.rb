class ChangeDateToBeStringInOffers < ActiveRecord::Migration[7.0]
  def change
    change_column :offers, :date, :string
  end
end
