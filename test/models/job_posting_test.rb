require 'test_helper'

class JobPostingTest < ActiveSupport::TestCase
    test "creates a valid record" do
        posting = JobPosting.new
        posting.title = "Software Developer"
        posting.company = "Menards"
        posting.jobType = "Full-Time"
        posting.salary = "$45,000"
        posting.duties = "Creates new websites on the fly"
        posting.basicQualifications = "Current student"
        posting.education = "Associates in Computer Science or equivalent experience"
        posting.skills = "Working in a team environment"
        posting.howToApply = "Go to www.Menards.com"
        
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
        assert posting.errors[:jobType].include?("can't be blank")
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
        assert posting.errors[:basicQualifications].include?("can't be blank")
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
        assert posting.errors[:howToApply].include?("can't be blank")
    end
    
end
