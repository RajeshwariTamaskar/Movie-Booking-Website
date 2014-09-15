require 'test_helper'

class ShowsControllerTest < ActionController::TestCase
  setup do
    @show = shows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create show" do
    assert_difference('Show.count') do
      post :create, show: { date_of_show: @show.date_of_show, end_time: @show.end_time, movie_id: @show.movie_id, screen_id: @show.screen_id, seats_avail: @show.seats_avail, start_time: @show.start_time }
    end

    assert_redirected_to show_path(assigns(:show))
  end

  test "should show show" do
    get :show, id: @show
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @show
    assert_response :success
  end

  test "should update show" do
    patch :update, id: @show, show: { date_of_show: @show.date_of_show, end_time: @show.end_time, movie_id: @show.movie_id, screen_id: @show.screen_id, seats_avail: @show.seats_avail, start_time: @show.start_time }
    assert_redirected_to show_path(assigns(:show))
  end

  test "should destroy show" do
    assert_difference('Show.count', -1) do
      delete :destroy, id: @show
    end

    assert_redirected_to shows_path
  end
end
