require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { create_date: @game.create_date, description: @game.description, developer_id: @game.developer_id, game_name: @game.game_name, game_review_id: @game.game_review_id, geme_genre_id: @game.geme_genre_id, geme_info_id: @game.geme_info_id, release_date: @game.release_date, version: @game.version }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { create_date: @game.create_date, description: @game.description, developer_id: @game.developer_id, game_name: @game.game_name, game_review_id: @game.game_review_id, geme_genre_id: @game.geme_genre_id, geme_info_id: @game.geme_info_id, release_date: @game.release_date, version: @game.version }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end
