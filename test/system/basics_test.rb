require "application_system_test_case"

class BasicsTest < ApplicationSystemTestCase
  setup do
    @basic = basics(:one)
  end

  test "visiting the index" do
    visit basics_url
    assert_selector "h1", text: "Basics"
  end

  test "creating a Basic" do
    visit basics_url
    click_on "New Basic"

    fill_in "Genres", with: @basic.genres
    fill_in "Primarytitle", with: @basic.primaryTitle
    fill_in "Startyear", with: @basic.startYear
    fill_in "Tconst", with: @basic.tconst
    click_on "Create Basic"

    assert_text "Basic was successfully created"
    click_on "Back"
  end

  test "updating a Basic" do
    visit basics_url
    click_on "Edit", match: :first

    fill_in "Genres", with: @basic.genres
    fill_in "Primarytitle", with: @basic.primaryTitle
    fill_in "Startyear", with: @basic.startYear
    fill_in "Tconst", with: @basic.tconst
    click_on "Update Basic"

    assert_text "Basic was successfully updated"
    click_on "Back"
  end

  test "destroying a Basic" do
    visit basics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Basic was successfully destroyed"
  end
end
