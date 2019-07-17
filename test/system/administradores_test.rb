require "application_system_test_case"

class AdministradoresTest < ApplicationSystemTestCase
  setup do
    @administrador = administradores(:one)
  end

  test "visiting the index" do
    visit administradores_url
    assert_selector "h1", text: "Administradores"
  end

  test "creating a Administrador" do
    visit administradores_url
    click_on "New Administrador"

    fill_in "Email", with: @administrador.email
    fill_in "Nome", with: @administrador.nome
    fill_in "Senha", with: @administrador.senha
    click_on "Create Administrador"

    assert_text "Administrador foi criado com sucesso"
    click_on "Back"
  end

  test "updating a Administrador" do
    visit administradores_url
    click_on "Edit", match: :first

    fill_in "Email", with: @administrador.email
    fill_in "Nome", with: @administrador.nome
    fill_in "Senha", with: @administrador.senha
    click_on "Update Administrador"

    assert_text "Administrador foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Administrador" do
    visit administradores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Administrador foi apagado com sucesso"
  end
end
