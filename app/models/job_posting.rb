class JobPosting < ActiveRecord::Base
    belongs_to :job_type
    validates_presence_of :title, :company, :job_type_id, :salary, :duties, :basic_qualifications, :education, :skills, :how_to_apply
end
