class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :imagen_url
      t.text :descripcion

      t.timestamps
    end
  end
end
