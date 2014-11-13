class JobPostingsController < ApplicationController
  def index
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
        params.require(:job_posting).permit(:title, :company, :jobType, :salary, :duties, :basicQualiifications, :education, :skills, :experience, :howToApply)
    end

end
