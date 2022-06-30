class CreateManShoes < ActiveRecord::Migration[7.0]
  def change
    create_table :man_shoes do |t|
      t.string :title
      t.string :cetegory
      t.string :lable
      t.integer :price
      t.string :color
      t.text :description
      t.integer :size

      t.timestamps
    end
  end
end
