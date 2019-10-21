class AddNamesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_nsme, :string
    add_column :users, :last_name, :string
  end
end
