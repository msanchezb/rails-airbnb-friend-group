class AddPriceToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :price, :integer, default: 0
  end
end
