class PedidoProduto < ApplicationRecord
  belongs_to :produto
  belongs_to :pedido

  after_save :atualiza_estoque_e_valor

  def atualiza_estoque_e_valor
  	self.pedido.atualiza_estoque
  end
end
