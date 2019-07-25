class Filhos < ActiveRecord::Migration[5.2]
  def change
  	add_column :funcionarios, :nome_dos_filhos, :text
  	add_column :funcionarios, :estado_civil, :string
  	add_column :funcionarios, :nome_conjuge, :string
  end
end
