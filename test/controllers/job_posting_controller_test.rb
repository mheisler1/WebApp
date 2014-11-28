require 'test_helper'

class JobPostingControllerTest < ActionController::TestCase

      setup do
        @job_posting = job_postings(:one)
      end


    test "should get index" do
    get :index
    assert_response :success
  end

end
