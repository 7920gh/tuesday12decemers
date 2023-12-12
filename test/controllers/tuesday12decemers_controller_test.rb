require "test_helper"

class Tuesday12decemersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuesday12decemer = tuesday12decemers(:one)
  end

  test "should get index" do
    get tuesday12decemers_url
    assert_response :success
  end

  test "should get new" do
    get new_tuesday12decemer_url
    assert_response :success
  end

  test "should create tuesday12decemer" do
    assert_difference("Tuesday12decemer.count") do
      post tuesday12decemers_url, params: { tuesday12decemer: { address: @tuesday12decemer.address, description: @tuesday12decemer.description, email: @tuesday12decemer.email, name: @tuesday12decemer.name, personaldata: @tuesday12decemer.personaldata, phone: @tuesday12decemer.phone } }
    end

    assert_redirected_to tuesday12decemer_url(Tuesday12decemer.last)
  end

  test "should show tuesday12decemer" do
    get tuesday12decemer_url(@tuesday12decemer)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuesday12decemer_url(@tuesday12decemer)
    assert_response :success
  end

  test "should update tuesday12decemer" do
    patch tuesday12decemer_url(@tuesday12decemer), params: { tuesday12decemer: { address: @tuesday12decemer.address, description: @tuesday12decemer.description, email: @tuesday12decemer.email, name: @tuesday12decemer.name, personaldata: @tuesday12decemer.personaldata, phone: @tuesday12decemer.phone } }
    assert_redirected_to tuesday12decemer_url(@tuesday12decemer)
  end

  test "should destroy tuesday12decemer" do
    assert_difference("Tuesday12decemer.count", -1) do
      delete tuesday12decemer_url(@tuesday12decemer)
    end

    assert_redirected_to tuesday12decemers_url
  end
end
