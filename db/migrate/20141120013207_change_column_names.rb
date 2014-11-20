class ChangeColumnNames < ActiveRecord::Migration
  def change
      change_table :job_postings do |t|
          t.rename :jobType, :job_type
          t.rename :basicQualifications, :basic_qualifications
          t.rename :howToApply, :how_to_apply
      end
  end
end
 