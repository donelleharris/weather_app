require 'test_helper'

class PreviousCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @previous_city = previous_cities(:one)
  end

  test "should get index" do
    get previous_cities_url
    assert_response :success
  end

  test "should get new" do
    get new_previous_city_url
    assert_response :success
  end

  test "should create previous_city" do
    assert_difference('PreviousCity.count') do
      post previous_cities_url, params: { previous_city: { city: @previous_city.city } }
    end

    assert_redirected_to previous_city_url(PreviousCity.last)
  end

  test "should show previous_city" do
    get previous_city_url(@previous_city)
    assert_response :success
  end

  test "should get edit" do
    get edit_previous_city_url(@previous_city)
    assert_response :success
  end

  test "should update previous_city" do
    patch previous_city_url(@previous_city), params: { previous_city: { city: @previous_city.city } }
    assert_redirected_to previous_city_url(@previous_city)
  end

  test "should destroy previous_city" do
    assert_difference('PreviousCity.count', -1) do
      delete previous_city_url(@previous_city)
    end

    assert_redirected_to previous_cities_url
  end
end
