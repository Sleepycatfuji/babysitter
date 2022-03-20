class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end