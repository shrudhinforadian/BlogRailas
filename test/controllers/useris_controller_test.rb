require 'test_helper'

class UserisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @useri = useris(:one)
  end

  test "should get index" do
    get useris_url
    assert_response :success
  end

  test "should get new" do
    get new_useri_url
    assert_response :success
  end

  test "should create useri" do
    assert_difference('Useri.count') do
      post useris_url, params: { useri: { email: @useri.email, login: @useri.login, name: @useri.name } }
    end

    assert_redirected_to useri_url(Useri.last)
  end

  test "should show useri" do
    get useri_url(@useri)
    assert_response :success
  end

  test "should get edit" do
    get edit_useri_url(@useri)
    assert_response :success
  end

  test "should update useri" do
    patch useri_url(@useri), params: { useri: { email: @useri.email, login: @useri.login, name: @useri.name } }
    assert_redirected_to useri_url(@useri)
  end

  test "should destroy useri" do
    assert_difference('Useri.count', -1) do
      delete useri_url(@useri)
    end

    assert_redirected_to useris_url
  end
end
