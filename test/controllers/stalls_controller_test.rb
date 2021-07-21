require "test_helper"

class StallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stall = stalls(:one)
  end

  test "should get index" do
    get stalls_url, as: :json
    assert_response :success
  end

  test "should create stall" do
    assert_difference('Stall.count') do
      post stalls_url, params: { stall: { cost: @stall.cost, duration: @stall.duration, gazebo: @stall.gazebo, stall_location: @stall.stall_location, store_date: @stall.store_date, table: @stall.table, vechicle: @stall.vechicle } }, as: :json
    end

    assert_response 201
  end

  test "should show stall" do
    get stall_url(@stall), as: :json
    assert_response :success
  end

  test "should update stall" do
    patch stall_url(@stall), params: { stall: { cost: @stall.cost, duration: @stall.duration, gazebo: @stall.gazebo, stall_location: @stall.stall_location, store_date: @stall.store_date, table: @stall.table, vechicle: @stall.vechicle } }, as: :json
    assert_response 200
  end

  test "should destroy stall" do
    assert_difference('Stall.count', -1) do
      delete stall_url(@stall), as: :json
    end

    assert_response 204
  end
end
