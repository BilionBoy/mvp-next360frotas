require "application_system_test_case"

class OStatusAprovacaosTest < ApplicationSystemTestCase
  setup do
    @o_status_aprovacao = o_status_aprovacao(:one)
  end

  test "visiting the index" do
    visit o_status_aprovacao_url
    assert_selector "h1", text: "O status aprovacaos"
  end

  test "should create o status aprovacao" do
    visit o_status_aprovacao_url
    click_on "New o status aprovacao"

    fill_in "Descricao", with: @o_status_aprovacao.descricao
    click_on "Create O status aprovacao"

    assert_text "O status aprovacao was successfully created"
    click_on "Back"
  end

  test "should update O status aprovacao" do
    visit o_status_aprovacao_url(@o_status_aprovacao)
    click_on "Edit this o status aprovacao", match: :first

    fill_in "Descricao", with: @o_status_aprovacao.descricao
    click_on "Update O status aprovacao"

    assert_text "O status aprovacao was successfully updated"
    click_on "Back"
  end

  test "should destroy O status aprovacao" do
    visit o_status_aprovacao_url(@o_status_aprovacao)
    click_on "Destroy this o status aprovacao", match: :first

    assert_text "O status aprovacao was successfully destroyed"
  end
end
