class JobPosting < ActiveRecord::Base
    validates_presence_of :title, :company, :jobType, :salary, :duties, :basicQualifications, :education, :skills, :experience, :howToApply
end
