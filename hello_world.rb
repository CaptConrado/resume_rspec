require "prawn"
require "prawn/measurement_extensions"

name    = "Conrad W. Ottey Jr."
phone   = "858-213-3362"
email   = "ottey001@gmail.com"
website = "@CaptConrado" 

filename = "hello.pdf"

		def education(school,location,date) 
			"#{school}, #{location}, #{date}"
		end

		def experiance(title,company,location,date,arr)
			"<b>#{title}</b>, #{company} - #{location}<i>(#{date})</i> \n - #{arr.first}\n - #{arr[2]} \n - #{arr.last}"
		end

Prawn::Document.generate(filename) do
	

		# header
		pad(15) {
			font("../../../BigCaslon.ttf") do

			text "#{name}", :align => :center, :size => 20
		end
		}
			text "#{phone}|#{email}|#{website}", :align => :center, :size => 12
		
		
			pad(20) do
				stroke do
					text "Objective", :size => 18
					horizontal_rule
				end
			end
			text "Obtain an interview for the Account/Project manager position at SkyBox Creative"

			pad(25) do
				stroke do
					text "Education", :size => 18
					horizontal_rule
				end
			end
			text education("<b>Cal State San Marcos</b>","San Marcos, CA","<i>August 2005 - May 2009</i>"),:inline_format => true
			text "<i>B.A., Communication</i>", :indent_paragraphs => 60,:inline_format => true
			move_down 20
			text education("<b>Arizona State University</b>","Phoenix, AZ","<i>August 2009 - May 2011</i>"),:inline_format => true
			text "<i>M.A., Communication Studies</i>", :indent_paragraphs => 60,:inline_format => true

			pad(15) do
				stroke do
					text "Skills", :size => 18
					horizontal_rule
					# text "To obtain the Project / Account Manager position "
				end
			end

			skills = ["Web Development","Ruby on Rails","Project Managment","Spin Selling","Small Group Communication"]

			skills.each do |l|
				text "-"+l
				move_down 2
			end

			pad(15) do
				stroke do
					text "Work Experiance ", :size => 18
					horizontal_rule
				end
			end
			
			j_one   = []
			j_two   = []
			j_three = []
			exp = [experiance("Product Specialist","SmartDraw Software","San Diego, CA","August 2011 - May 2012",j_one),
					experiance("Project Manager","(ASU)Walter Coronkite School of Journamsint ","Phoenix Arizona","date",j_two),
					experiance("Contract Ruby Developer","Gap Intelligence","San Diego, CA","date",j_three)]

			exp.each do |l|
				text l,:inline_format => true
				move_down 5
				
      			move_down 3
			end

			pad(15) do
				stroke do
					text "Achievments", :size => 18
					horizontal_rule
				end
			end

			# /Library/FontsCourier\ New\ Italic.ttf
end


	
# text "We are still on the initial page for this example. Now I'll ask " +
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

# # Assignment
# pdf = Prawn::Document.new
# pdf.text "Hello World"
# pdf.render_file "assignment.pdf"

# # Implicit Block
# Prawn::Document.generate("implicit.pdf") do
#   text "Hello World"
#   text "And why is this called implicet?"
# end

# # Explicit Block
# Prawn::Document.generate("explicit.pdf") do |pdf|
#   pdf.text "Hello World"
#   pdf.text "why is this called explicit?"
# end

