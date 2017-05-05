class AddStarsToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :stars, :integer
  end
end
