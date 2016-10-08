require 'test_helper'

class HenhousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @henhouse = henhouses(:one)
  end

  test "should get index" do
    get henhouses_url
    assert_response :success
  end

  test "should get new" do
    get new_henhouse_url
    assert_response :success
  end

  test "should create henhouse" do
    assert_difference('Henhouse.count') do
      post henhouses_url, params: { henhouse: { capacity: @henhouse.capacity, description: @henhouse.description, name: @henhouse.name, no: @henhouse.no } }
    end

    assert_redirected_to henhouse_url(Henhouse.last)
  end

  test "should show henhouse" do
    get henhouse_url(@henhouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_henhouse_url(@henhouse)
    assert_response :success
  end

  test "should update henhouse" do
    patch henhouse_url(@henhouse), params: { henhouse: { capacity: @henhouse.capacity, description: @henhouse.description, name: @henhouse.name, no: @henhouse.no } }
    assert_redirected_to henhouse_url(@henhouse)
  end

  test "should destroy henhouse" do
    assert_difference('Henhouse.count', -1) do
      delete henhouse_url(@henhouse)
    end

    assert_redirected_to henhouses_url
  end
end
