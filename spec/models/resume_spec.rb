require File.expand_path("../../../resume", __FILE__)
describe "Resume" do
	context "making sure rspec works" do
		it "should return true when method rspec_works is called" do 
			Resume.rspec_works.should eq(true)
		end
	end
end