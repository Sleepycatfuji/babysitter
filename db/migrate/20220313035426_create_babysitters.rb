class CreateBabysitters < ActiveRecord::Migration[6.1]
  def change
    create_table :babysitters do |t|
      t.string :name
      t.integer :price
      t.references :booking

      t.timestamps
    end
  end
end
