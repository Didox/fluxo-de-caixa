require "application_system_test_case"

class FaturasTest < ApplicationSystemTestCase
  setup do
    @fatura = faturas(:one)
  end

  test "visiting the index" do
    visit faturas_url
    assert_selector "h1", text: "Faturas"
  end

  test "creating a Fatura" do
    visit faturas_url
    click_on "New Fatura"

    fill_in "Cliente", with: @fatura.cliente_id
    fill_in "Emissao", with: @fatura.emissao
    fill_in "Status", with: @fatura.status
    fill_in "Vencimento", with: @fatura.vencimento
    click_on "Create Fatura"

    assert_text "Fatura foi criada com sucesso"
    click_on "Back"
  end

  test "updating a Fatura" do
    visit faturas_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @fatura.cliente_id
    fill_in "Emissao", with: @fatura.emissao
    fill_in "Status", with: @fatura.status
    fill_in "Vencimento", with: @fatura.vencimento
    click_on "Update Fatura"

    assert_text "Fatura foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Fatura" do
    visit faturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fatura foi apagado com sucesso"
  end
end
