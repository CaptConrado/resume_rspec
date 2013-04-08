require 'prawn'

class Resume
	attr_accessor :user_name, :file_name

	def initialize(options={})
		self.user_name = options[:user_name] || "Your Name"
		self.file_name = options[:file_name] || "resume.pdf"
	end

	def self.rspec_works
		true
	end

	def header
		title_name = self.user_name
	end
end

