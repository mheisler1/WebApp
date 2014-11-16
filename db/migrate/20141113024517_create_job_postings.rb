class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
      t.string :title
      t.string :company
      t.string :jobType
      t.string :salary
      t.text :duties
      t.text :basicQualifications
      t.string :education
      t.text :skills
      t.string :experience
      t.text :howToApply

      t.timestamps
    end
  end
end
