class RemoveExperienceFromJobPostings < ActiveRecord::Migration
  def change
    remove_column :job_postings, :experience, :string
  end
end
