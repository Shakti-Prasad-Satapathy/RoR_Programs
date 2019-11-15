class AddContentcopyToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :contentcopy, :string
  end
end
