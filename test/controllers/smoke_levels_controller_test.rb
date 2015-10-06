require 'test_helper'

class SmokeLevelsControllerTest < ActionController::TestCase
  setup do
    @smoke_level = smoke_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smoke_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smoke_level" do
    assert_difference('SmokeLevel.count') do
      post :create, smoke_level: { measuredAt: @smoke_level.measuredAt, sensorID: @smoke_level.sensorID, value: @smoke_level.value }
    end

    assert_redirected_to smoke_level_path(assigns(:smoke_level))
  end

  test "should show smoke_level" do
    get :show, id: @smoke_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @smoke_level
    assert_response :success
  end

  test "should update smoke_level" do
    patch :update, id: @smoke_level, smoke_level: { measuredAt: @smoke_level.measuredAt, sensorID: @smoke_level.sensorID, value: @smoke_level.value }
    assert_redirected_to smoke_level_path(assigns(:smoke_level))
  end

  test "should destroy smoke_level" do
    assert_difference('SmokeLevel.count', -1) do
      delete :destroy, id: @smoke_level
    end

    assert_redirected_to smoke_levels_path
  end
end
