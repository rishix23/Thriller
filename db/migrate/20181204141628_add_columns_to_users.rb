class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, defualt: false
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end
end
