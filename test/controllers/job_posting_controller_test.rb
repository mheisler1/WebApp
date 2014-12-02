require 'test_helper'

class JobPostingsControllerTest < ActionController::TestCase
  setup do
  @job_posting = job_postings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_postings)
  end

end
