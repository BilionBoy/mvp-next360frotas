require "test_helper"

class OStatusAprovacaoControllerTest < ActionDispatch::IntegrationTest
  setup do
    @o_status_aprovacao = o_status_aprovacao(:one)
  end

  test "should get index" do
    get o_status_aprovacao_index_url
    assert_response :success
  end

  test "should get new" do
    get new_o_status_aprovacao_url
    assert_response :success
  end

  test "should create o_status_aprovacao" do
    assert_difference("OStatusAprovacao.count") do
      post o_status_aprovacao_index_url, params: { o_status_aprovacao: { descricao: @o_status_aprovacao.descricao } }
    end

    assert_redirected_to o_status_aprovacao_url(OStatusAprovacao.last)
  end

  test "should show o_status_aprovacao" do
    get o_status_aprovacao_url(@o_status_aprovacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_o_status_aprovacao_url(@o_status_aprovacao)
    assert_response :success
  end

  test "should update o_status_aprovacao" do
    patch o_status_aprovacao_url(@o_status_aprovacao), params: { o_status_aprovacao: { descricao: @o_status_aprovacao.descricao } }
    assert_redirected_to o_status_aprovacao_url(@o_status_aprovacao)
  end

  test "should destroy o_status_aprovacao" do
    assert_difference("OStatusAprovacao.count", -1) do
      delete o_status_aprovacao_url(@o_status_aprovacao)
    end

    assert_redirected_to o_status_aprovacao_index_url
  end
end
