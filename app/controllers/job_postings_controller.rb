class JobPostingsController < ApplicationController
    before_action :set_job_posting, only: [:show, :edit, :update]

    skip_before_filter :authenticate_admin!, :except => [:edit, :update, :destroy]

    def index
    end

    def display
        @job_postings = JobPosting.where(approved:true)
    end

    def admin_view
        @job_postings = JobPosting.where(approved: false)
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

    def edit
    end

    def update
      respond_to do |format|
        if @job_posting.update(jobPostingParams)
            format.html { redirect_to @job_posting, notice: 'Job posting was successfully updated.' }
        else
            format.html { render :edit }
        end
      end
    end

    def destroy
    end

    private
    def jobPostingParams
        params.require(:job_posting).permit(:title, :company, :job_type, :salary, :duties, :basic_qualifications, :education, :skills, :experience, :how_to_apply, :approved)
    end
    
    def set_job_posting
      @job_posting = JobPosting.find(params[:id])
    end
    

end
