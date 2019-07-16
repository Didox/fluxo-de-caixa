class StatusPedidos < ActiveRecord::Migration[5.2]
  def change
  	add_column :pedidos, :status, :int, default: 2
  end
end
