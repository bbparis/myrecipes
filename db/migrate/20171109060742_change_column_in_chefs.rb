class ChangeColumnInChefs < ActiveRecord::Migration[5.1]
  def change
    rename_column :chefs, :description, :email
    change_column :chefs, :email, :string
  end
end
