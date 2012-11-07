require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get amcharts" do
    get :amcharts
    assert_response :success
  end

end
