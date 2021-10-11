require "test_helper"

class PrincipalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @principal = principals(:one)
  end

  test "should get index" do
    get principals_url
    assert_response :success
  end

  test "should get new" do
    get new_principal_url
    assert_response :success
  end

  test "should create principal" do
    assert_difference('Principal.count') do
      post principals_url, params: { principal: { category: @principal.category, characters: @principal.characters, nconst: @principal.nconst, tconst: @principal.tconst } }
    end

    assert_redirected_to principal_url(Principal.last)
  end

  test "should show principal" do
    get principal_url(@principal)
    assert_response :success
  end

  test "should get edit" do
    get edit_principal_url(@principal)
    assert_response :success
  end

  test "should update principal" do
    patch principal_url(@principal), params: { principal: { category: @principal.category, characters: @principal.characters, nconst: @principal.nconst, tconst: @principal.tconst } }
    assert_redirected_to principal_url(@principal)
  end

  test "should destroy principal" do
    assert_difference('Principal.count', -1) do
      delete principal_url(@principal)
    end

    assert_redirected_to principals_url
  end
end
