require 'test_helper'

class HeatIndicesControllerTest < ActionController::TestCase
  setup do
    @heat_index = heat_indices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:heat_indices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heat_index" do
    assert_difference('HeatIndex.count') do
      post :create, heat_index: { measuredAt: @heat_index.measuredAt, sensorID: @heat_index.sensorID, value: @heat_index.value }
    end

    assert_redirected_to heat_index_path(assigns(:heat_index))
  end

  test "should show heat_index" do
    get :show, id: @heat_index
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @heat_index
    assert_response :success
  end

  test "should update heat_index" do
    patch :update, id: @heat_index, heat_index: { measuredAt: @heat_index.measuredAt, sensorID: @heat_index.sensorID, value: @heat_index.value }
    assert_redirected_to heat_index_path(assigns(:heat_index))
  end

  test "should destroy heat_index" do
    assert_difference('HeatIndex.count', -1) do
      delete :destroy, id: @heat_index
    end

    assert_redirected_to heat_indices_path
  end
end
