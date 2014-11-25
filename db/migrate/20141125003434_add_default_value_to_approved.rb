class AddDefaultValueToApproved < ActiveRecord::Migration
  def change
      change_column :job_postings, :approved, :boolean, :default => false
  end
end
