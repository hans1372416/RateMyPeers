require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :redirect
  end


  test "should show course" do
    get course_url(@course)
    assert_response :redirect
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :redirect
  end


  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
end
