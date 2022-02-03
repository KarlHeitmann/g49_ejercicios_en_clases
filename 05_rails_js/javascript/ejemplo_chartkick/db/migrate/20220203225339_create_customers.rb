class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :nombre
      t.string :pais

      t.timestamps
    end
  end
end
