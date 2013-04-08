require File.expand_path("../../../resume", __FILE__)
describe "Resume" do
	
	context "making sure rspec works" do
		it "should return true when method rspec_works is called" do 
			Resume.rspec_works.should eq(true)
		end
	end

	context "initialization" do
		it "should take an optional hash when initializing" do 
			expect { Resume.new(filename: "resume.pdf") }.to_not raise_error
		end
		it "should not raise an error when initializing without any options" do 
			expect { Resume.new }.to_not raise_error
		end

		it "should have an name for the user" do
			Resume.new.user_name.should_not eq("")
		end
		it "should have a .pdf filename extention" do 
			Resume.new.file_name.should =~ /.pdf/
		end
	end

	context "adds a header with the user name" do
		it "should have the user name in the header" do 
			title = Resume.new
			title.header.should eq("Your Name")
		end
		# it "should have an address" do
		# 	Resume.new.
	end
end