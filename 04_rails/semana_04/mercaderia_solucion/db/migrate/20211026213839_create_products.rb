class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :nombre
      t.text :descripcion
      t.string :codigo_de_barra

      t.timestamps
    end
  end
end
