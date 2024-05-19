class AddConceptToPrototypes < ActiveRecord::Migration[7.0]
  def change
    add_column :prototypes, :concept, :string
  end
end
