class CreateBar < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.integer :cif
      t.float :x
      t.float :y
      t.string :tapas
      t.string :descripcion
      t.string :nombre
    end
  end
end
