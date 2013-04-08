require "prawn"
require "prawn/measurement_extensions"


filename = "hello.pdf"
Prawn::Document.generate(filename) do
	text "This text should be right aligned", :align => :right
end


	
# 	text "We are still on the initial page for this example. Now I'll ask " +
# "Prawn to gently start a new page. Please follow me to the next page."
# start_new_page
# text "See. We've left the previous page behind."
# stroke_horizontal_rule
# pad(20) { text "Text padded both before and after." }
# stroke_horizontal_rule
# pad_top(20) { text "Text padded on the top." }
# prawn = Prawn::Document

# prawn.generate("maybe.pdf") do 
# 	text "distraction"
# end 

# Assignment
pdf = Prawn::Document.new
pdf.text "Hello World"
pdf.render_file "assignment.pdf"

# Implicit Block
Prawn::Document.generate("implicit.pdf") do
  text "Hello World"
  text "And why is this called implicet?"
end

# Explicit Block
Prawn::Document.generate("explicit.pdf") do |pdf|
  pdf.text "Hello World"
  pdf.text "why is this called explicit?"
end

