require 'test_helper'

class JobPostingTest < ActiveSupport::TestCase
    #
    # Test cases for job_posting form fields
    #
    test "creates a valid record" do
        posting = job_postings(:one)
        assert_instance_of(JobPosting, posting, "All fields need to be filled in")
        assert posting.save
    end
    
    test "should not save unless title is filled in" do
        posting = job_postings(:one)
        assert(posting.save, "cant be blank") # save will error if title is blank
        assert posting.errors[posting.title]
    end
    
    test "should not save unless company is filled in" do
        posting = job_postings(:one)
        assert(posting.save, "cant be blank") # save will error if company is blank
        assert posting.errors[posting.company]
    end
    
    test "should not save unless salary is filled in" do
        posting = job_postings(:one)
        assert(posting.save, "cant be blank") # save will error if salary is blank
        assert posting.errors[posting.salary]
    end
    
    test "should not save unless duties are filled in" do
        posting = job_postings(:one)
        assert(posting.save, "cant be blank") # save will error if duties are blank
        assert posting.errors[posting.duties]
    end
    
    test "should not save unless basic qualifications are filled in" do
        posting = job_postings(:one)
        assert(posting.save, "cant be blank") # save will error if basic_qualifications are blank
        assert posting.errors[posting.basic_qualifications]
    end
    
    test "should not save unless education is filled in" do
        posting = job_postings(:one)
        assert(posting.save, "cant be blank") # save will error if education is blank
        assert posting.errors[posting.education]
    end
    
    test "should not save unless skills are filled in" do
        posting = job_postings(:one)
        assert(posting.save, "cant be blank") # save will error if skills are blank
        assert posting.errors[posting.skills]
    end

    test "should not save unless how to apply is filled in" do
        posting = job_postings(:one)
        assert(posting.save, "cant be blank") # save will error if how_to_apply is blank
        assert posting.errors[posting.how_to_apply]
    end

    #
    # Tests for each field JobPosting search method
    #
    test "search should return a single job_posting with posting.title params" do
        posting = job_postings(:one)
        assert_equal([posting], JobPosting.search("Software Engineer"), "Values should be equal")
    end

    test "search should return a single job_posting with posting.company params" do
        posting = job_postings(:one)
        assert_equal([posting], JobPosting.search("Target"), "Values should be equal")
    end

    test "search should return a single job_posting with posting.salary params" do
        posting = job_postings(:one)
        assert_equal([posting], JobPosting.search("$45,000"), "Values should be equal")
    end

    test "search should return a single job_posting with posting.duties params" do
        posting = job_postings(:one)
        assert_equal([posting], JobPosting.search("Build Software"), "Values should be equal")
    end

    test "search should return a single job_posting with posting.basic_qualifications params" do
        posting = job_postings(:one)
        assert_equal([posting], JobPosting.search("0-6"), "Values should be equal")
    end

    test "search should return a single job_posting with posting.education params" do
        posting = job_postings(:one)
        assert_equal([posting], JobPosting.search("Associates"), "Values should be equal")
    end

    test "search should return a single job_posting with posting.skills params" do
        posting = job_postings(:one)
        assert_equal([posting], JobPosting.search("Java"), "Values should be equal")
    end

    test "search should return a single job_posting with posting.how_to_apply params" do
        posting = job_postings(:one)
        assert_equal([posting], JobPosting.search("www.target.com"), "Values should be equal")
    end

    #
    # Tests for amount of job_postings to return
    #
    test "search should not return a job_posting with Web Developer params" do
        posting = job_postings(:one)
        assert_not_equal([posting], JobPosting.search("Web Developer"), "Values should not be equal")
    end

    test "search should return two job_postings with XML params" do
        assert(JobPosting.search("XML").count == 2, "Two values in fixtures to return")
    end

    test "search should return all job_postings with no params" do
        assert(JobPosting.search("").count == 2, "Two values in fixtures to return")
    end
    
end
