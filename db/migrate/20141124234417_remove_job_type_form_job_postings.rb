class RemoveJobTypeFormJobPostings < ActiveRecord::Migration
  def change
      remove_column :job_postings, :job_type, :string
  end
end
