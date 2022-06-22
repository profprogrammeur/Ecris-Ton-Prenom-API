class CreateChildren < ActiveRecord::Migration[7.0]
  def change
    create_table :children do |t|
      t.string :child_name
      t.string :child_image

      t.timestamps
    end
  end
end
