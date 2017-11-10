class UpdateColumnNameInChefsTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :chefs, :email, :description
    change_column :chefs, :description, :text
  end
end
