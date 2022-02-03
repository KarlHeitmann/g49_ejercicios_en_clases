class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :customer, null: false, foreign_key: true
      t.integer :kind
      t.date :fecha

      t.timestamps
    end
  end
end
