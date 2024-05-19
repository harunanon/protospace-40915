class AddTitleToPrototypes < ActiveRecord::Migration[7.0]
  def change
    add_column :prototypes, :title, :string
  end
end
