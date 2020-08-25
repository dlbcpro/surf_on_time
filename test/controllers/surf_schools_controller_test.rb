require 'test_helper'

class SurfSchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get surf_schools_index_url
    assert_response :success
  end

  test "should get show" do
    get surf_schools_show_url
    assert_response :success
  end

  test "should get update" do
    get surf_schools_update_url
    assert_response :success
  end

end
