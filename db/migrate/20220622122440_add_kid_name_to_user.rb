class AddKidNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :kid_name, :string
    add_column :users, :kid_photo, :string
  end
end
