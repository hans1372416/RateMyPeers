require 'test_helper'

class WordResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_response = word_responses(:one)
  end

  test "should get index" do
    get word_responses_url
    assert_response :success
  end

  test "should get new" do
    get new_word_response_url
    assert_response :success
  end

  test "should create word_response" do
    assert_difference('WordResponse.count') do
      post word_responses_url, params: { word_response: {  } }
    end

    assert_redirected_to word_response_url(WordResponse.last)
  end

  test "should show word_response" do
    get word_response_url(@word_response)
    assert_response :success
  end

  test "should get edit" do
    get edit_word_response_url(@word_response)
    assert_response :success
  end

  test "should update word_response" do
    patch word_response_url(@word_response), params: { word_response: {  } }
    assert_redirected_to word_response_url(@word_response)
  end

  test "should destroy word_response" do
    assert_difference('WordResponse.count', -1) do
      delete word_response_url(@word_response)
    end

    assert_redirected_to word_responses_url
  end
end
