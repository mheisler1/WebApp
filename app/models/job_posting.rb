class JobPosting < ActiveRecord::Base
    belongs_to :job_type
    belongs_to :pay_type
    validates_presence_of :title, :company, :job_type_id, :salary, :duties, :basic_qualifications, :education, :skills, :how_to_apply, :pay_type_id

def self.search(search)
  if search.present?
    where('title LIKE ? OR company LIKE ? OR job_type_id LIKE ? OR salary LIKE ? OR duties LIKE ? OR basic_qualifications LIKE ? OR education LIKE ? OR skills LIKE ? OR how_to_apply LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  else
    where(approved:true)
  end
end

end
