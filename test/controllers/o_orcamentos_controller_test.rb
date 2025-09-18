require "test_helper"

class OOrcamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @o_orcamento = o_orcamentos(:one)
  end

  test "should get index" do
    get o_orcamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_o_orcamento_url
    assert_response :success
  end

  test "should create o_orcamento" do
    assert_difference("OOrcamento.count") do
      post o_orcamentos_url, params: { o_orcamento: { g_centro_custo_id: @o_orcamento.g_centro_custo_id, g_veiculo_id: @o_orcamento.g_veiculo_id, itens: @o_orcamento.itens, o_status_id: @o_orcamento.o_status_id, o_tipo_solicitacao_id: @o_orcamento.o_tipo_solicitacao_id, user_id: @o_orcamento.user_id, valor_total: @o_orcamento.valor_total } }
    end

    assert_redirected_to o_orcamento_url(OOrcamento.last)
  end

  test "should show o_orcamento" do
    get o_orcamento_url(@o_orcamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_o_orcamento_url(@o_orcamento)
    assert_response :success
  end

  test "should update o_orcamento" do
    patch o_orcamento_url(@o_orcamento), params: { o_orcamento: { g_centro_custo_id: @o_orcamento.g_centro_custo_id, g_veiculo_id: @o_orcamento.g_veiculo_id, itens: @o_orcamento.itens, o_status_id: @o_orcamento.o_status_id, o_tipo_solicitacao_id: @o_orcamento.o_tipo_solicitacao_id, user_id: @o_orcamento.user_id, valor_total: @o_orcamento.valor_total } }
    assert_redirected_to o_orcamento_url(@o_orcamento)
  end

  test "should destroy o_orcamento" do
    assert_difference("OOrcamento.count", -1) do
      delete o_orcamento_url(@o_orcamento)
    end

    assert_redirected_to o_orcamentos_url
  end
end
