class AddNameToParents < ActiveRecord::Migration[6.1]
  def change
    add_column :parents, :name, :string
  end
end
