require 'test_helper'

class JobPostingControllerTest < ActionController::TestCase
  def setup
    @controller = JobPostingControllerTest.new
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
