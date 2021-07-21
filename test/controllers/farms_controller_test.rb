require "test_helper"

class FarmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @farm = farms(:one)
  end

  test "should get index" do
    get farms_url, as: :json
    assert_response :success
  end

  test "should create farm" do
    assert_difference('Farm.count') do
      post farms_url, params: { farm: { farm_location: @farm.farm_location, pick_date: @farm.pick_date, pick_quantity: @farm.pick_quantity, plant_date: @farm.plant_date, plant_quantity: @farm.plant_quantity, user_id: @farm.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show farm" do
    get farm_url(@farm), as: :json
    assert_response :success
  end

  test "should update farm" do
    patch farm_url(@farm), params: { farm: { farm_location: @farm.farm_location, pick_date: @farm.pick_date, pick_quantity: @farm.pick_quantity, plant_date: @farm.plant_date, plant_quantity: @farm.plant_quantity, user_id: @farm.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy farm" do
    assert_difference('Farm.count', -1) do
      delete farm_url(@farm), as: :json
    end

    assert_response 204
  end
end
