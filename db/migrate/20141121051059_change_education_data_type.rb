class ChangeEducationDataType < ActiveRecord::Migration
  def change
      change_column :job_postings, :education, :text
  end
end
