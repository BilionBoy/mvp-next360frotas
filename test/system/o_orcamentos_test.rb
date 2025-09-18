require "application_system_test_case"

class OOrcamentosTest < ApplicationSystemTestCase
  setup do
    @o_orcamento = o_orcamentos(:one)
  end

  test "visiting the index" do
    visit o_orcamentos_url
    assert_selector "h1", text: "O orcamentos"
  end

  test "should create o orcamento" do
    visit o_orcamentos_url
    click_on "New o orcamento"

    fill_in "G centro custo", with: @o_orcamento.g_centro_custo_id
    fill_in "G veiculo", with: @o_orcamento.g_veiculo_id
    fill_in "Itens", with: @o_orcamento.itens
    fill_in "O status", with: @o_orcamento.o_status_id
    fill_in "O tipo solicitacao", with: @o_orcamento.o_tipo_solicitacao_id
    fill_in "User", with: @o_orcamento.user_id
    fill_in "Valor total", with: @o_orcamento.valor_total
    click_on "Create O orcamento"

    assert_text "O orcamento was successfully created"
    click_on "Back"
  end

  test "should update O orcamento" do
    visit o_orcamento_url(@o_orcamento)
    click_on "Edit this o orcamento", match: :first

    fill_in "G centro custo", with: @o_orcamento.g_centro_custo_id
    fill_in "G veiculo", with: @o_orcamento.g_veiculo_id
    fill_in "Itens", with: @o_orcamento.itens
    fill_in "O status", with: @o_orcamento.o_status_id
    fill_in "O tipo solicitacao", with: @o_orcamento.o_tipo_solicitacao_id
    fill_in "User", with: @o_orcamento.user_id
    fill_in "Valor total", with: @o_orcamento.valor_total
    click_on "Update O orcamento"

    assert_text "O orcamento was successfully updated"
    click_on "Back"
  end

  test "should destroy O orcamento" do
    visit o_orcamento_url(@o_orcamento)
    click_on "Destroy this o orcamento", match: :first

    assert_text "O orcamento was successfully destroyed"
  end
end
