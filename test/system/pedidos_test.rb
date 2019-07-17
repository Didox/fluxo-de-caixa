require "application_system_test_case"

class PedidosTest < ApplicationSystemTestCase
  setup do
    @pedido = pedidos(:one)
  end

  test "visiting the index" do
    visit pedidos_url
    assert_selector "h1", text: "Pedidos"
  end

  test "creating a Pedido" do
    visit pedidos_url
    click_on "New Pedido"

    fill_in "Data emissao fatura", with: @pedido.data_emissao_fatura
    fill_in "Data fim", with: @pedido.data_fim
    fill_in "Data inicio", with: @pedido.data_inicio
    fill_in "Descricao", with: @pedido.descricao
    fill_in "Numero fatura", with: @pedido.numero_fatura
    fill_in "Placa", with: @pedido.placa
    fill_in "Valor", with: @pedido.valor
    fill_in "Vencimento", with: @pedido.vencimento
    click_on "Create Pedido"

    assert_text "Pedido foi criado com sucesso"
    click_on "Back"
  end

  test "updating a Pedido" do
    visit pedidos_url
    click_on "Edit", match: :first

    fill_in "Data emissao fatura", with: @pedido.data_emissao_fatura
    fill_in "Data fim", with: @pedido.data_fim
    fill_in "Data inicio", with: @pedido.data_inicio
    fill_in "Descricao", with: @pedido.descricao
    fill_in "Numero fatura", with: @pedido.numero_fatura
    fill_in "Placa", with: @pedido.placa
    fill_in "Valor", with: @pedido.valor
    fill_in "Vencimento", with: @pedido.vencimento
    click_on "Update Pedido"

    assert_text "Pedido foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Pedido" do
    visit pedidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pedido foi apagado com sucesso"
  end
end
