require "application_system_test_case"

class VeiculosTest < ApplicationSystemTestCase
  setup do
    @veiculo = veiculos(:one)
  end

  test "visiting the index" do
    visit veiculos_url
    assert_selector "h1", text: "Veiculos"
  end

  test "creating a Veiculo" do
    visit veiculos_url
    click_on "New Veiculo"

    fill_in "Cliente", with: @veiculo.cliente_id
    fill_in "Placa", with: @veiculo.placa
    click_on "Create Veiculo"

    assert_text "Veiculo foi criado com sucesso"
    click_on "Back"
  end

  test "updating a Veiculo" do
    visit veiculos_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @veiculo.cliente_id
    fill_in "Placa", with: @veiculo.placa
    click_on "Update Veiculo"

    assert_text "Veiculo foi atualizado com sucesso"
    click_on "Back"
  end

  test "destroying a Veiculo" do
    visit veiculos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Veiculo foi apagado com sucesso"
  end
end
