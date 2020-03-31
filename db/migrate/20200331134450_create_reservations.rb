class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.string :cedula
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
