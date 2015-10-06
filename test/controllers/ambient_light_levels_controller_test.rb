require 'test_helper'

class AmbientLightLevelsControllerTest < ActionController::TestCase
  setup do
    @ambient_light_level = ambient_light_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ambient_light_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ambient_light_level" do
    assert_difference('AmbientLightLevel.count') do
      post :create, ambient_light_level: { measuredAt: @ambient_light_level.measuredAt, sensorID: @ambient_light_level.sensorID, value: @ambient_light_level.value }
    end

    assert_redirected_to ambient_light_level_path(assigns(:ambient_light_level))
  end

  test "should show ambient_light_level" do
    get :show, id: @ambient_light_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ambient_light_level
    assert_response :success
  end

  test "should update ambient_light_level" do
    patch :update, id: @ambient_light_level, ambient_light_level: { measuredAt: @ambient_light_level.measuredAt, sensorID: @ambient_light_level.sensorID, value: @ambient_light_level.value }
    assert_redirected_to ambient_light_level_path(assigns(:ambient_light_level))
  end

  test "should destroy ambient_light_level" do
    assert_difference('AmbientLightLevel.count', -1) do
      delete :destroy, id: @ambient_light_level
    end

    assert_redirected_to ambient_light_levels_path
  end
end
