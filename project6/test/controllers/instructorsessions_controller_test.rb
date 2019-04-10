require 'test_helper'

class InstructorsessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get instructorsessions_new_url
    assert_response :success
  end

end
