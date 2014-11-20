class JobPosting < ActiveRecord::Base
    validates_presence_of :title, :company, :job_type, :salary, :duties, :basic_qualifications, :education, :skills, :experience, :how_to_apply
end
