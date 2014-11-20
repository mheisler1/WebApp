class JobPostingsController < ApplicationController
    before_action :set_job_posting, only: [:show]

    def index
    end

    def display
        @job_postings = JobPosting.all
    end
    
    def new
        @job_posting = JobPosting.new
    end

    def create
        @job_posting = JobPosting.new(jobPostingParams)
        respond_to do |format|
            if @job_posting.save
                format.html { redirect_to @job_posting, notice: 'Job posting was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end

    private
    def jobPostingParams
        params.require(:job_posting).permit(:title, :company, :job_type, :salary, :duties, :basic_qualifications, :education, :skills, :experience, :how_to_apply)
    end
    
    def set_job_posting
      @job_posting = JobPosting.find(params[:id])
    end
    

end
