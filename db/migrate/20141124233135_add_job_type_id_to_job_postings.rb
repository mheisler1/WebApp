class AddJobTypeIdToJobPostings < ActiveRecord::Migration
  def change
    add_reference :job_postings, :job_type, index: true
  end
end
