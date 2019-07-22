require "application_system_test_case"

class ItensFaturasTest < ApplicationSystemTestCase
  setup do
    @itens_fatura = itens_faturas(:one)
  end

  test "visiting the index" do
    visit itens_faturas_url
    assert_selector "h1", text: "Itens Faturas"
  end

  test "creating a Itens fatura" do
    visit itens_faturas_url
    click_on "New Itens Fatura"

    fill_in "Data fim", with: @itens_fatura.data_fim
    fill_in "Data inicio", with: @itens_fatura.data_inicio
    fill_in "Descricao", with: @itens_fatura.descricao
    fill_in "Fatura", with: @itens_fatura.fatura_id
    fill_in "Placa", with: @itens_fatura.placa
    fill_in "Valor", with: @itens_fatura.valor
    click_on "Create Itens fatura"

    assert_text "Itens fatura foi criada com sucesso"
    click_on "Back"
  end

  test "updating a Itens fatura" do
    visit itens_faturas_url
    click_on "Edit", match: :first

    fill_in "Data fim", with: @itens_fatura.data_fim
    fill_in "Data inicio", with: @itens_fatura.data_inicio
    fill_in "Descricao", with: @itens_fatura.descricao
    fill_in "Fatura", with: @itens_fatura.fatura_id
    fill_in "Placa", with: @itens_fatura.placa
    fill_in "Valor", with: @itens_fatura.valor
    click_on "Update Itens fatura"

    assert_text "Itens fatura foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Itens fatura" do
    visit itens_faturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Itens fatura foi apagado com sucesso"
  end
end
