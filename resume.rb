require 'prawn'

class Resume
	attr_accessor :user_name, :file_name

def initialize(options={})
	self.user_name = options[:user_name] || "Your Name"
	self.file_name = options[:file_name] || "xyz.pdf"
	# self.average_prose = 300
	# self.average_screen = 180
	# self.book = open(self.url).read

	# parse_book
end


	
	def title

	end


	def self.rspec_works
		true
	end





end

