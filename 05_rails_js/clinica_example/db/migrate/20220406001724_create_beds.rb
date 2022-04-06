class CreateBeds < ActiveRecord::Migration[6.1]
  def change
    create_table :beds do |t|
      t.string :numero_de_cama
      t.string :tipo

      t.timestamps
    end
  end
end
