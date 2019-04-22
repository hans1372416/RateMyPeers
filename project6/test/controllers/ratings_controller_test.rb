require 'test_helper'

class RatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rating = ratings(:one)
  end

  test "should get index" do
    get ratings_url
    assert_response :redirect
  end

  test "should get new" do
    get new_rating_url
    assert_response :redirect
  end

  test "should create rating" do
    get "/ratings/new"
    assert_response :redirect
  end

  test "should get edit" do
    get edit_rating_url(@rating)
    assert_response :redirect
  end

  test "should destroy rating" do
    assert_difference('Rating.count', -1) do
      delete rating_url(@rating)
    end

    assert_redirected_to ratings_url
  end
end
