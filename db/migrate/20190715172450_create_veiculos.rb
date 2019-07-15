class CreateVeiculos < ActiveRecord::Migration[5.2]
  def change
    create_table :veiculos do |t|
      t.string :placa
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
