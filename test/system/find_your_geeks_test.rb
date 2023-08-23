require "application_system_test_case"

class FindYourGeeksTest < ApplicationSystemTestCase
  setup do
    @find_your_geek = find_your_geeks(:one)
  end

  test "visiting the index" do
    visit find_your_geeks_url
    assert_selector "h1", text: "Find your geeks"
  end

  test "should create find your geek" do
    visit find_your_geeks_url
    click_on "New find your geek"

    click_on "Create Find your geek"

    assert_text "Find your geek was successfully created"
    click_on "Back"
  end

  test "should update Find your geek" do
    visit find_your_geek_url(@find_your_geek)
    click_on "Edit this find your geek", match: :first

    click_on "Update Find your geek"

    assert_text "Find your geek was successfully updated"
    click_on "Back"
  end

  test "should destroy Find your geek" do
    visit find_your_geek_url(@find_your_geek)
    click_on "Destroy this find your geek", match: :first

    assert_text "Find your geek was successfully destroyed"
  end
end
