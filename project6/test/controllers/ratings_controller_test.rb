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
    assert_difference('Rating.count') do
      post ratings_url, params: { rating: { evaluate_id: @rating.evaluate_id, user_id: @rating.user_id, group_id: @rating.group_id, score: @rating.score, comments: @rating.comments, created_at: @rating.created_at, updated_at: @rating.updated_at } }
    end

    assert_redirected_to rating_url(Rating.last)
  end

  test "should show rating" do
    get rating_url(@rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_rating_url(@rating)
    assert_response :redirect
  end

  test "should update rating" do
    patch rating_url(@rating), params: { rating: { evaluate_id: @rating.evaluate_id, user_id: @rating.user_id, group_id: @rating.group_id, score: @rating.score, comments: @rating.comments, created_at: @rating.created_at, updated_at: @rating.updated_at } }
    assert_redirected_to rating_url(@rating)
  end

  test "should destroy rating" do
    assert_difference('Rating.count', -1) do
      delete rating_url(@rating)
    end

    assert_redirected_to ratings_url
  end
end
