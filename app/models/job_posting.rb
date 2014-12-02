class JobPosting < ActiveRecord::Base
    belongs_to :job_type
    belongs_to :pay_type
    belongs_to :location_type
    validates_presence_of :title, :company, :job_type_id, :location_type_id, :salary, :duties, :basic_qualifications, :education, :skills, :how_to_apply, :pay_type_id

def self.search(search)
    query = search[:search]
    job = search[:job_type]
    pay = search[:pay_type]
    location = search[:location_type]
    
    results = JobPosting.where(approved:true).order("created_at desc")
    
    if query
        query = "%#{query}%"
        results = results.where(['title LIKE ? OR company LIKE ? OR salary LIKE ? OR duties LIKE ? OR basic_qualifications LIKE ? OR education LIKE ? OR skills LIKE ? OR how_to_apply LIKE ?', query, query, query, query, query, query, query, query])
    end
    
    if !job.blank?
        results = results.where("job_type_id == ?", [job])
    end
    
    if !pay.blank?
        results = results.where("pay_type_id == ?", [pay])
    end
    
    if !location.blank?
        results = results.where("location_type_id == ?", [location])
    end
    
    results
end

end
