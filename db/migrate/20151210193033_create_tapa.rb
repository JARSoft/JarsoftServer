class CreateTapa < ActiveRecord::Migration
  def change
    create_table :tapas do |t|
      t.string :descripcion
      t.integer :codigo
      t.string :nombre
      t.float :overall
      t.belongs_to :bar, index: true
    end
  end
end
