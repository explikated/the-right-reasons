require 'test_helper'

class EpisodePointsControllerTest < ActionController::TestCase
  setup do
    @episode_point = episode_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:episode_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create episode_point" do
    assert_difference('EpisodePoint.count') do
      post :create, episode_point: {  }
    end

    assert_redirected_to episode_point_path(assigns(:episode_point))
  end

  test "should show episode_point" do
    get :show, id: @episode_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @episode_point
    assert_response :success
  end

  test "should update episode_point" do
    patch :update, id: @episode_point, episode_point: {  }
    assert_redirected_to episode_point_path(assigns(:episode_point))
  end

  test "should destroy episode_point" do
    assert_difference('EpisodePoint.count', -1) do
      delete :destroy, id: @episode_point
    end

    assert_redirected_to episode_points_path
  end
end
