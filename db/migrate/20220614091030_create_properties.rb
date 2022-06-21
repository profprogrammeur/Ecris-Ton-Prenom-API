class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.integer :price
      t.text :description
      t.text :address
      t.string :image_url

      t.timestamps
    end
  end
end
