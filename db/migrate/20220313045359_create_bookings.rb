class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.string :start
      t.string :end
      t.references :parents, null: false, foreign_key: true
      t.references :babysitters, null: false, foreign_key: true

      t.timestamps
    end
  end
end
