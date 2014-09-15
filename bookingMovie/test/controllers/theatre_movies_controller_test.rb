require 'test_helper'

class TheatreMoviesControllerTest < ActionController::TestCase
  setup do
    @theatre_movie = theatre_movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theatre_movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theatre_movie" do
    assert_difference('TheatreMovie.count') do
      post :create, theatre_movie: { movie_id: @theatre_movie.movie_id, theatre_id: @theatre_movie.theatre_id }
    end

    assert_redirected_to theatre_movie_path(assigns(:theatre_movie))
  end

  test "should show theatre_movie" do
    get :show, id: @theatre_movie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @theatre_movie
    assert_response :success
  end

  test "should update theatre_movie" do
    patch :update, id: @theatre_movie, theatre_movie: { movie_id: @theatre_movie.movie_id, theatre_id: @theatre_movie.theatre_id }
    assert_redirected_to theatre_movie_path(assigns(:theatre_movie))
  end

  test "should destroy theatre_movie" do
    assert_difference('TheatreMovie.count', -1) do
      delete :destroy, id: @theatre_movie
    end

    assert_redirected_to theatre_movies_path
  end
end
