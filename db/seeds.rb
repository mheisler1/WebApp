# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

JobPosting.create(title: 'Software Developer', company: 'Menards', job_type_id: '1', salary: '45000', pay_type_id: '1', location_type_id: '3', duties: 'Develop desktop applications using VB6 and .NET', basic_qualifications: '0-6 months of OOP experience', education: 'Associates Degree', skills: 'VB, C#, .NET', how_to_apply: 'Go to www.menards.com', approved: 'true')

JobPosting.create(title: 'Web Developer', company: 'JB Systems', job_type_id: '3', salary: '16', pay_type_id: '2', location_type_id: '1', duties: 'Develop websites using PHP', basic_qualifications: 'Basic knowledge of HTML/CSS', education: 'Associates', skills: 'PHP, HTML, CSS, JavaScript', how_to_apply: 'Go to www.jbsystems.com', approved: 'true')

JobPosting.create(title: 'Software Developer Intern', company: 'JAMF Software', job_type_id: '3', salary: '20', pay_type_id: '2', location_type_id: '1', duties: 'Develop new features for existing client applications', basic_qualifications: '1-2 years of OOP experience', education: 'Associates Degree', skills: 'Java, Objective-C', how_to_apply: 'Go to www.jamfsoftware.com', approved: 'true')

JobPosting.create(title: 'Web Designer', company: 'BestBuy', job_type_id: '1', salary: '45000', pay_type_id: '1', location_type_id: '1', duties: 'Develop responsive websites', basic_qualifications: 'A good understanding of web design principles and a passion for programming', education: 'Associates Degree', skills: 'Javascript, Bootstrap API', how_to_apply: 'Go to www.bestbuy.com', approved: 'true')

JobPosting.create(title: 'Java Developer', company: 'Ashley Furniture', job_type_id: '1', salary: '25', pay_type_id: '2', location_type_id: '2', duties: 'Develop new features for existing client applications', basic_qualifications: '1-2 years of OOP experience', education: 'Associates Degree', skills: 'Java, groovy', how_to_apply: 'Go to www.ashleyfurniture.com', approved: 'false')

JobPosting.create(title: 'Software Developer', company: 'Walmart', job_type_id: '2', salary: '22', pay_type_id: '2', location_type_id: '1', duties: 'Develop software that integrates with mobile devices', basic_qualifications: '1-2 years of OOP experience', education: 'Associates Degree', skills: 'Java, Objective-C, Phone Gap', how_to_apply: 'Go to www.walmart.com', approved: 'true')

JobPosting.create(title: 'Core Web Developer', company: 'Festival Foods', job_type_id: '1', salary: '24', pay_type_id: '2', location_type_id: '2', duties: 'Develops and maintains company website, keeping it up to standard for current mobile demands', basic_qualifications: 'HTML/CSS, JavaScript', education: 'Associates Degree', skills: 'JavaScript, Integrated unit testing', how_to_apply: 'Go to www.festivalfoods.com', approved: 'true')

JobPosting.create(title: 'Software Engineer', company: 'Intel', job_type_id: '1', salary: '55000', pay_type_id: '1', location_type_id: '3', duties: 'Develop computer software for cutting edge computer hardware', basic_qualifications: '2 years of OOP experience', education: 'Associates Degree', skills: 'Java, Objective-C, C', how_to_apply: 'Go to www.intel.com', approved: 'true')

JobPosting.create(title: 'Ruby Developer', company: 'Shanghai Bistro', job_type_id: '2', salary: '22', pay_type_id: '2', location_type_id: '2', duties: 'Develop code that will produce a new digital menu', basic_qualifications: '1-2 years of OOP experience', education: 'Associates Degree', skills: 'Ruby, unit testing', how_to_apply: 'Go to www.shanghaibistro.com', approved: 'true')

JobPosting.create(title: 'Software Developer', company: 'CVTC', job_type_id: '1', salary: '45000', pay_type_id: '1', location_type_id: '3', duties: 'Develop and maintain the school\'s website', basic_qualifications: '1-2 years of OOP experience', education: 'Associates Degree', skills: 'HTML, CSS, PHP, unit testing', how_to_apply: 'Go to www.cvtc.edu', approved: 'true')

JobPosting.create(title: 'Software Engineer', company: 'University of Wisconin-Eau Claire', job_type_id: '1', salary: '45000', pay_type_id: '1', location_type_id: '1', duties: 'Develop and maintain software for the school\'s Mac lab', basic_qualifications: '1-2 years of OOP experience', education: 'Associates Degree', skills: 'Objective-C, unit testing', how_to_apply: 'Go to www.uwec.edu', approved: 'true')


# Admin Login
Admin.create(email: 'admin@admin.com', password: "admin1234", password_confirmation: "admin1234" )



# Job Types
JobType.create(job_type: 'Full-Time')
JobType.create(job_type: 'Part-Time')
JobType.create(job_type: 'Internship')

# Job Types
PayType.create(pay_type: 'Salary')
PayType.create(pay_type: 'Hourly')

# Job Types
LocationType.create(location_type: 'On-Site')
LocationType.create(location_type: 'Hybrid')
LocationType.create(location_type: 'Remote')