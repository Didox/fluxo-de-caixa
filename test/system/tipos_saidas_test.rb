require "application_system_test_case"

class TiposSaidasTest < ApplicationSystemTestCase
  setup do
    @tipos_saida = tipos_saidas(:one)
  end

  test "visiting the index" do
    visit tipos_saidas_url
    assert_selector "h1", text: "Tipos Saidas"
  end

  test "creating a Tipos saida" do
    visit tipos_saidas_url
    click_on "New Tipos Saida"

    fill_in "Tipo", with: @tipos_saida.tipo
    click_on "Create Tipos saida"

    assert_text "Tipos de saida foi criado com sucesso"
    click_on "Back"
  end

  test "updating a Tipos saida" do
    visit tipos_saidas_url
    click_on "Edit", match: :first

    fill_in "Tipo", with: @tipos_saida.tipo
    click_on "Update Tipos saida"

    assert_text "Tipos de saida foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Tipos saida" do
    visit tipos_saidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipos de saida foi apagado com sucesso"
  end
end
