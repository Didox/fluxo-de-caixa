require "application_system_test_case"

class SaidasTest < ApplicationSystemTestCase
  setup do
    @saida = saidas(:one)
  end

  test "visiting the index" do
    visit saidas_url
    assert_selector "h1", text: "Saidas"
  end

  test "creating a Saida" do
    visit saidas_url
    click_on "New Saida"

    fill_in "Data emissao fatura", with: @saida.data_emissao_fatura
    fill_in "Descricao", with: @saida.descricao
    fill_in "Numero fatura", with: @saida.numero_fatura
    fill_in "Placa", with: @saida.placa
    fill_in "Valor", with: @saida.valor
    fill_in "Vencimento", with: @saida.vencimento
    click_on "Create Saida"

    assert_text "Saida foi criado com sucesso"
    click_on "Back"
  end

  test "updating a Saida" do
    visit saidas_url
    click_on "Edit", match: :first

    fill_in "Data emissao fatura", with: @saida.data_emissao_fatura
    fill_in "Descricao", with: @saida.descricao
    fill_in "Numero fatura", with: @saida.numero_fatura
    fill_in "Placa", with: @saida.placa
    fill_in "Valor", with: @saida.valor
    fill_in "Vencimento", with: @saida.vencimento
    click_on "Update Saida"

    assert_text "Saida foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Saida" do
    visit saidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Saida foi apagado com sucesso"
  end
end
