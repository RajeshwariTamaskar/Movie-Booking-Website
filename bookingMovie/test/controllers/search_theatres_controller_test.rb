require 'test_helper'

class SearchTheatresControllerTest < ActionController::TestCase
  setup do
    @search_theatre = search_theatres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:search_theatres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create search_theatre" do
    assert_difference('SearchTheatre.count') do
      post :create, search_theatre: { theatre_id: @search_theatre.theatre_id, user_id: @search_theatre.user_id }
    end

    assert_redirected_to search_theatre_path(assigns(:search_theatre))
  end

  test "should show search_theatre" do
    get :show, id: @search_theatre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @search_theatre
    assert_response :success
  end

  test "should update search_theatre" do
    patch :update, id: @search_theatre, search_theatre: { theatre_id: @search_theatre.theatre_id, user_id: @search_theatre.user_id }
    assert_redirected_to search_theatre_path(assigns(:search_theatre))
  end

  test "should destroy search_theatre" do
    assert_difference('SearchTheatre.count', -1) do
      delete :destroy, id: @search_theatre
    end

    assert_redirected_to search_theatres_path
  end
end
