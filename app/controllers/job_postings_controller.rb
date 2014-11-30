class JobPostingsController < ApplicationController
    before_action :set_job_posting, only: [:show, :edit, :update]

    skip_before_filter :authenticate_admin!, :except => [:edit, :update, :destroy, :admin_view]

    def index
        @job_postings = JobPosting.where(approved:true).order(created_at: :desc).limit(10)
    end

    def display
        @job_postings = JobPosting.where(approved:true).search(params[:search]).order(created_at: :desc)
    end

    def admin_view
        @job_postings = JobPosting.where(approved: false)
    end
    
    def new
        @job_posting = JobPosting.new
        @job_type = JobType.all.collect {|t| [t.job_type, t.id]}
        @pay_type = PayType.all.collect {|p| [p.pay_type, p.id]}
        @location_type = LocationType.all.collect {|l| [l.location_type, l.id]}
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
        @job_type = JobType.all.collect {|t| [t.job_type, t.id]}
        @pay_type = PayType.all.collect {|p| [p.pay_type, p.id]}
        @location_type = LocationType.all.collect {|l| [l.location_type, l.id]}

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
        params.require(:job_posting).permit(:title, :company, :job_type_id, :pay_type_id, :location_type_id, :salary, :duties, :basic_qualifications, :education, :skills, :how_to_apply, :approved)
    end
    
    def set_job_posting
      @job_posting = JobPosting.includes(:job_type, :pay_type, :location_type).find(params[:id])
    end
    

end
