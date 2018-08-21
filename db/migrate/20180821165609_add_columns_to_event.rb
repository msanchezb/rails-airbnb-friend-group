class AddColumnsToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :group_bio, :string
    add_column :events, :group_photo, :string
  end
end
