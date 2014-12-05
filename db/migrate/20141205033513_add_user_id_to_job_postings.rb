class AddUserIdToJobPostings < ActiveRecord::Migration
  def change
      add_reference :job_postings, :user_id, index: true
  end
end
