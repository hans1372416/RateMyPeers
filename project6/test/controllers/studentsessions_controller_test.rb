require 'test_helper'

class StudentsessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get studentsessions_new_url
    assert_response :success
  end

end
