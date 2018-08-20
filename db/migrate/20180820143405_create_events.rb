class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.datetime :date
      t.string :location
      t.text :description
      t.boolean :confirmed, default: false
      t.text :review_of_host
      t.text :review_of_guest
      t.string :category
      t.integer :group_size

      t.timestamps
    end
  end
end
