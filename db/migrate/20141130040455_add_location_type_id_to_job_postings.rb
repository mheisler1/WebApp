class AddLocationTypeIdToJobPostings < ActiveRecord::Migration
  def change
    add_reference :job_postings, :location_type, index: true
  end
end
