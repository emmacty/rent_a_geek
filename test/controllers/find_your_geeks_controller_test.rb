require "test_helper"

class FindYourGeeksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @find_your_geek = find_your_geeks(:one)
  end

  test "should get index" do
    get find_your_geeks_url
    assert_response :success
  end

  test "should get new" do
    get new_find_your_geek_url
    assert_response :success
  end

  test "should create find_your_geek" do
    assert_difference("FindYourGeek.count") do
      post find_your_geeks_url, params: { find_your_geek: {  } }
    end

    assert_redirected_to find_your_geek_url(FindYourGeek.last)
  end

  test "should show find_your_geek" do
    get find_your_geek_url(@find_your_geek)
    assert_response :success
  end

  test "should get edit" do
    get edit_find_your_geek_url(@find_your_geek)
    assert_response :success
  end

  test "should update find_your_geek" do
    patch find_your_geek_url(@find_your_geek), params: { find_your_geek: {  } }
    assert_redirected_to find_your_geek_url(@find_your_geek)
  end

  test "should destroy find_your_geek" do
    assert_difference("FindYourGeek.count", -1) do
      delete find_your_geek_url(@find_your_geek)
    end

    assert_redirected_to find_your_geeks_url
  end
end
