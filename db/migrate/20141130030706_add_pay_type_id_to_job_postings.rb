class AddPayTypeIdToJobPostings < ActiveRecord::Migration
  def change
    add_reference :job_postings, :pay_type, index: true
  end
end
