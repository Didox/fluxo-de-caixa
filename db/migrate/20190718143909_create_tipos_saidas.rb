class CreateTiposSaidas < ActiveRecord::Migration[5.2]
  def change
    create_table :tipos_saidas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
