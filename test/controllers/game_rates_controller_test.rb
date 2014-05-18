require 'test_helper'

class GameRatesControllerTest < ActionController::TestCase
  setup do
    @game_rate = game_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_rate" do
    assert_difference('GameRate.count') do
      post :create, game_rate: { game_id: @game_rate.game_id, game_play: @game_rate.game_play, graphic: @game_rate.graphic, story: @game_rate.story, total: @game_rate.total }
    end

    assert_redirected_to game_rate_path(assigns(:game_rate))
  end

  test "should show game_rate" do
    get :show, id: @game_rate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_rate
    assert_response :success
  end

  test "should update game_rate" do
    patch :update, id: @game_rate, game_rate: { game_id: @game_rate.game_id, game_play: @game_rate.game_play, graphic: @game_rate.graphic, story: @game_rate.story, total: @game_rate.total }
    assert_redirected_to game_rate_path(assigns(:game_rate))
  end

  test "should destroy game_rate" do
    assert_difference('GameRate.count', -1) do
      delete :destroy, id: @game_rate
    end

    assert_redirected_to game_rates_path
  end
end
