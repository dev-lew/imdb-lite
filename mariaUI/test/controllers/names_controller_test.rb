require "test_helper"

class NamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @name = names(:one)
  end

  test "should get index" do
    get names_url
    assert_response :success
  end

  test "should get new" do
    get new_name_url
    assert_response :success
  end

  test "should create name" do
    assert_difference('Name.count') do
      post names_url, params: { name: { birthYear: @name.birthYear, deathYear: @name.deathYear, knownForTitles: @name.knownForTitles, nconst: @name.nconst, primaryName: @name.primaryName, primaryProfession: @name.primaryProfession } }
    end

    assert_redirected_to name_url(Name.last)
  end

  test "should show name" do
    get name_url(@name)
    assert_response :success
  end

  test "should get edit" do
    get edit_name_url(@name)
    assert_response :success
  end

  test "should update name" do
    patch name_url(@name), params: { name: { birthYear: @name.birthYear, deathYear: @name.deathYear, knownForTitles: @name.knownForTitles, nconst: @name.nconst, primaryName: @name.primaryName, primaryProfession: @name.primaryProfession } }
    assert_redirected_to name_url(@name)
  end

  test "should destroy name" do
    assert_difference('Name.count', -1) do
      delete name_url(@name)
    end

    assert_redirected_to names_url
  end
end
