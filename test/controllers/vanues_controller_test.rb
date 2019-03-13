require 'test_helper'

class VanuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vanue = vanues(:one)
  end

  test "should get index" do
    get vanues_url
    assert_response :success
  end

  test "should get new" do
    get new_vanue_url
    assert_response :success
  end

  test "should create vanue" do
    assert_difference('Vanue.count') do
      post vanues_url, params: { vanue: { address: @vanue.address, area: @vanue.area, city: @vanue.city, description: @vanue.description, guest_capacity: @vanue.guest_capacity, latitude: @vanue.latitude, longitude: @vanue.longitude, name: @vanue.name, prize: @vanue.prize, state: @vanue.state } }
    end

    assert_redirected_to vanue_url(Vanue.last)
  end

  test "should show vanue" do
    get vanue_url(@vanue)
    assert_response :success
  end

  test "should get edit" do
    get edit_vanue_url(@vanue)
    assert_response :success
  end

  test "should update vanue" do
    patch vanue_url(@vanue), params: { vanue: { address: @vanue.address, area: @vanue.area, city: @vanue.city, description: @vanue.description, guest_capacity: @vanue.guest_capacity, latitude: @vanue.latitude, longitude: @vanue.longitude, name: @vanue.name, prize: @vanue.prize, state: @vanue.state } }
    assert_redirected_to vanue_url(@vanue)
  end

  test "should destroy vanue" do
    assert_difference('Vanue.count', -1) do
      delete vanue_url(@vanue)
    end

    assert_redirected_to vanues_url
  end
end
