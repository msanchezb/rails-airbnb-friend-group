class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :user_bio, :text
    add_column :users, :user_photo, :string
    add_column :users, :group_bio, :text
    add_column :users, :group_photo, :string
  end
end
