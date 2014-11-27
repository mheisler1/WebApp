require 'test_helper'

class JobPostingTest < ActiveSupport::TestCase
    test "creates a valid record" do
        posting = JobPosting.new
        posting.title = "Software Developer"
        posting.company = "Menards"
        posting.job_type_id = 1
        posting.salary = "$45,000"
        posting.duties = "Creates new websites on the fly"
        posting.basic_qualifications = "Current student"
        posting.education = "Associates in Computer Science or equivalent experience"
        posting.skills = "Working in a team environment"
        posting.how_to_apply = "Go to www.Menards.com"
        
        assert posting.save
    end
    
    test "should not save unless title is filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:title].include?("can't be blank")
    end
    
    test "should not save unless company is filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:company].include?("can't be blank")
    end
    
    test "should not save unless job type is filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:job_type_id].include?("can't be blank")
    end
    
    test "should not save unless salary is filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:salary].include?("can't be blank")
    end
    
    test "should not save unless duties are filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:duties].include?("can't be blank")
    end
    
    test "should not save unless basic qualifications are filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:basic_qualifications].include?("can't be blank")
    end
    
    test "should not save unless education is filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:education].include?("can't be blank")
    end
    
    test "should not save unless skills are filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:skills].include?("can't be blank")
    end

    test "should not save unless how to apply is filled in" do
        posting = JobPosting.new
        assert !posting.save # save should fail because there are errors. 
        assert posting.errors[:how_to_apply].include?("can't be blank")
    end
    
end
