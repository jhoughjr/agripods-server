require 'test_helper'

class SensorErrorsControllerTest < ActionController::TestCase
  setup do
    @sensor_error = sensor_errors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sensor_errors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensor_error" do
    assert_difference('SensorError.count') do
      post :create, sensor_error: { occurredAt: @sensor_error.occurredAt, sensorID: @sensor_error.sensorID, value: @sensor_error.value }
    end

    assert_redirected_to sensor_error_path(assigns(:sensor_error))
  end

  test "should show sensor_error" do
    get :show, id: @sensor_error
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensor_error
    assert_response :success
  end

  test "should update sensor_error" do
    patch :update, id: @sensor_error, sensor_error: { occurredAt: @sensor_error.occurredAt, sensorID: @sensor_error.sensorID, value: @sensor_error.value }
    assert_redirected_to sensor_error_path(assigns(:sensor_error))
  end

  test "should destroy sensor_error" do
    assert_difference('SensorError.count', -1) do
      delete :destroy, id: @sensor_error
    end

    assert_redirected_to sensor_errors_path
  end
end
