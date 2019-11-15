class AddTitlecopyToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :titlecopy, :string
  end
end
