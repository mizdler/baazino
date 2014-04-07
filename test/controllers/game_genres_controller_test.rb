require 'test_helper'

class GameGenresControllerTest < ActionController::TestCase
  setup do
    @game_genre = game_genres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_genres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_genre" do
    assert_difference('GameGenre.count') do
      post :create, game_genre: { game_id: @game_genre.game_id, genre_id: @game_genre.genre_id }
    end

    assert_redirected_to game_genre_path(assigns(:game_genre))
  end

  test "should show game_genre" do
    get :show, id: @game_genre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_genre
    assert_response :success
  end

  test "should update game_genre" do
    patch :update, id: @game_genre, game_genre: { game_id: @game_genre.game_id, genre_id: @game_genre.genre_id }
    assert_redirected_to game_genre_path(assigns(:game_genre))
  end

  test "should destroy game_genre" do
    assert_difference('GameGenre.count', -1) do
      delete :destroy, id: @game_genre
    end

    assert_redirected_to game_genres_path
  end
end
