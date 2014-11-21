class AddColumn < ActiveRecord::Migration
  def change
      add_column :job_postings, :approved, :boolean
  end
end
