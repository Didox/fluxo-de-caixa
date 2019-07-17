class StatusSaidas < ActiveRecord::Migration[5.2]
  def change
  	add_column :saidas, :status, :int, default: 2
  end
end
