class Pedido < ApplicationRecord
  has_many :pedido_produtos

  def atualiza_estoque
    self.valor_total = 0
    self.pedido_produtos.each do |pp|
      self.valor_total += (pp.produto.valor * pp.quantidade)
      pp.produto.quantidade -= pp.quantidade
      pp.produto.save
    end

    self.save
  end
end
