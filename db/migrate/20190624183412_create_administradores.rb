class CreateAdministradores < ActiveRecord::Migration[5.2]
  def change
    create_table :administradores do |t|
      t.string :nome
      t.string :email
      t.string :senha

      t.timestamps
    end
  end
end
