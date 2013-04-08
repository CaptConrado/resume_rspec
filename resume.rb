require 'prawn'

class Resume
	def self.rspec_works
		true
	end
end

Prawn::Document.generate("hello.pdf") do
  text "Hello World!"
end