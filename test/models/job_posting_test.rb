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
        params = {:search => "Software Engineer"}
        result = JobPosting.search(params)
        assert_equal(1, result.count)
        assert_equal("Software Engineer", result.first.title)
    end

    test "search should return a single job_posting with posting.company params" do
        params = {:search => "Target"}
        result = JobPosting.search(params)
        assert_equal(1, result.count)
        assert_equal("Target", result.first.company)
    end

    test "search should return a single job_posting with posting.salary params" do
        params = {:search => "45,000"}
        result = JobPosting.search(params)
        assert_equal("$45,000", result.first.salary)
        assert_equal(1, result.count)
    end

    test "search should return a single job_posting with posting.duties params" do
        params = {:search => "Build Software"}
        result = JobPosting.search(params)
        assert_equal("Build software", result.first.duties)
        assert_equal(1, result.count)
    end

    test "search should return a single job_posting with posting.basic_qualifications params" do
        params = {:search => "0-6"}
        result = JobPosting.search(params)
        assert_equal("0-6 months OOP experience", result.first.basic_qualifications)
        assert_equal(1, result.count)
    end

    test "search should return a single job_posting with posting.education params" do
        params = {:search => "Associates"}
        result = JobPosting.search(params)
        assert_equal("Associates Degree", result.first.education)
        assert_equal(1, result.count)
    end

    test "search should return a single job_posting with posting.skills params" do
        params = {:search => "Java"}
        result = JobPosting.search(params)
        assert_equal("Java, XML, Eclipse IDE", result.first.skills)
        assert_equal(1, result.count)
    end

    test "search should return a single job_posting with posting.how_to_apply params" do
        params = {:search => "www.target.com"}
        result = JobPosting.search(params)
        assert_equal("www.target.com", result.first.how_to_apply)
        assert_equal(1, result.count)
    end

    #
    # Tests for amount of job_postings to return
    #
    test "search should not return a job_posting with abc params" do
        params = {:search => "abc"}
        result = JobPosting.search(params)
        assert_equal(0, result.count)
    end

    test "search should return two job_postings with XML params" do
        params = {:search => "XML"}
        result = JobPosting.search(params)
        assert_equal(2, result.count)
    end

    test "search should return all job_postings with no params" do
        params = {:search => ""}
        result = JobPosting.search(params)
        assert_equal(2, result.count)
    end
    
    test "search should return one job_posting with job_type of 2 in search params" do
        params = {:job_type => 2}
        result = JobPosting.search(params)
        assert_equal(1, result.count)
    end
    
    test "search should return two job_postings with pay_type of 1 in search params" do
        params = {:pay_type => 1}
        result = JobPosting.search(params)
        assert_equal(2, result.count)
    end
    
    test "search should return one job_postings with location_type of 2 in search params" do
        params = {:location_type => 2}
        result = JobPosting.search(params)
        assert_equal(2, result.count)
    end
    
    test "search should return one job_posting with pay_type of 1 and keyword of JB Systems" do
        params = {:search => "JB Systems",
                  :pay_type => 1}
        result = JobPosting.search(params)
        assert_equal(1, result.count)
        assert_equal("JB Systems", result.first.company)
    end

    test "search should return one job_posting with location_type of 2 and job_type of 1" do
        params = {:location_type => 2,
                  :job_type => 1}
        result = JobPosting.search(params)
        assert_equal(1, result.count)
        assert_equal("Web Developer", result.first.title)
    end
    
end
