class AddReferenceUserIdIntoChild < ActiveRecord::Migration[7.0]
  def change
    add_reference :children, :user, foreign_key: true
  end
end
