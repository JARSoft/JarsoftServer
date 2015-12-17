class CreateUsuario < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :password
      t.string :email
    end
  end
end
