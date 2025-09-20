require "application_system_test_case"

class GCartaoVeiculosTest < ApplicationSystemTestCase
  setup do
    @g_cartao_veiculo = g_cartao_veiculos(:one)
  end

  test "visiting the index" do
    visit g_cartao_veiculos_url
    assert_selector "h1", text: "G cartao veiculos"
  end

  test "should create g cartao veiculo" do
    visit g_cartao_veiculos_url
    click_on "New g cartao veiculo"

    fill_in "Numero cartao", with: @g_cartao_veiculo.numero_cartao
    click_on "Create G cartao veiculo"

    assert_text "G cartao veiculo was successfully created"
    click_on "Back"
  end

  test "should update G cartao veiculo" do
    visit g_cartao_veiculo_url(@g_cartao_veiculo)
    click_on "Edit this g cartao veiculo", match: :first

    fill_in "Numero cartao", with: @g_cartao_veiculo.numero_cartao
    click_on "Update G cartao veiculo"

    assert_text "G cartao veiculo was successfully updated"
    click_on "Back"
  end

  test "should destroy G cartao veiculo" do
    visit g_cartao_veiculo_url(@g_cartao_veiculo)
    click_on "Destroy this g cartao veiculo", match: :first

    assert_text "G cartao veiculo was successfully destroyed"
  end
end
