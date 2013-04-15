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
			"<b>#{title}</b>, #{company} - #{location}<i>(#{date})</i> \n - #{arr[0]}\n - #{arr[1]} \n - #{arr[2]}"
		end

		def achieve()
		end

Prawn::Document.generate(filename) do
	

		# header
		pad(10) {
			font("../../BigCaslon.ttf") do

			text "#{name}", :align => :center, :size => 20
		end
		}
			text "#{phone} | #{email} | #{website}", :align => :center
		
			pad(15) do
				stroke do
					text "Objective", :size => 18
					horizontal_rule
				end
			end
			text "Obtain an interview for the Account/Project manager position at SkyBox Creative", :size => 10,:style => :italic
		

			pad(15) do
				stroke do
					text "Education", :size => 18, :style => :italic
					horizontal_rule
				end
			end
			text education("<b>Arizona State University</b>","Phoenix, AZ","<i>August 2009 - May 2011</i>"),:inline_format => true
			text "<i>M.A., Communication Studies</i>", :indent_paragraphs => 60,:inline_format => true
			move_down 15
			text education("<b>Cal State San Marcos</b>","San Marcos, CA","<i>August 2005 - May 2009</i>"),:inline_format => true
			text "<i>B.A., Communication</i>", :indent_paragraphs => 60,:inline_format => true
		
			pad(10) do
				stroke do
					text "Skills", :size => 18, :style => :italic
					horizontal_rule
					# text "To obtain the Project / Account Manager position "
				end
			end

			skills = ["Web Development","Ruby on Rails","Project Managment","Spin Selling","Small Group Communication"]

			skills.each do |l|
				text "-"+l, :size => 12
				move_down 2
			end

			pad(15) do
				stroke do
					text "Work Experiance ", :size => 18, :style => :italic
					horizontal_rule
				end
			end
			
			j_one   = ["Served in a customer support role assisting customers with technical and adminitrative issues","In this roll, I also sold Software licences to new and existing customers.",
						"Provided the enterprise sales team with leads for larger accounts."]
			j_two   = ["Led a team of six in the creation,marketing and distribution of a custom directory app.",
						"Met with Downtown Phoenix community leaders in order to secure funding and input for application content.",
						"Tested the geolocation features across the Phoenix Metro area."]
			j_three = ["Maintained and convert existing data gathering program from Perl to Ruby,while participating in continues code reviews.",
						"Refactored our data-gathering application and reduced the codebase by 40% allowing for maintainable code.",
						"Wrote documentation for future developers in order to assist them with future maintainance."]
			exp = [experiance("Product Specialist","SmartDraw Software","San Diego, CA","August 2011 - May 2012",j_one),
					experiance("Project Manager","(ASU)Walter Cronkite School of Journalism ","Phoenix Arizona","Jan - May 2011",j_two),
					experiance("Contract Ruby Developer","Gap Intelligence","San Diego, CA","August 2012 - Febuary 2013",j_three)]

			exp.each do |l|
				text l,:inline_format => true, :size => 10
				move_down 4
				
      			move_down 3
			end

			pad(10) do
				stroke do
					text "Projects and Awards", :size => 18, :style => :italic
					horizontal_rule
				end
			end
			# def education(school,location,date) 
			# education("<b><i></i></b>","Mobile Web/Android application SmartPhx.com (not optimized for desktop)"," completed Summer 2011"), :inline_format => true
			# text "Completed ahead of schedule before or dealine goal of the 2011 All Star Game."
			text education("<b>SmartPHX.com</b>","ASU","<i>completed Summer 2011</i>"),:inline_format => true, :size =>10
			text "Mobile Web/Android application designed to be a tourist guide for Downtown Phoenix visitors",:size => 10, :indent_paragraphs => 5,:inline_format => true
			move_down 10
			text education("<b>Mobile HTML5 API finalist</b>","Qualcomm Uplinq conferance Hackathon","<i>May 2012</i>"),:inline_format => true, :size =>10
			text "Won second place for a Web App that flashed morse code on a SnapDragon powered Android phone.",:size => 10, :indent_paragraphs => 5,:inline_format => true
			move_down 10
			text education("<b>VP of Student Affairs Leadership Award</b>","CSUSM","<i>May 2009</i>"),:inline_format => true, :size =>10
			text "This award is given to one graduate from every graduating class.",:size => 10, :indent_paragraphs => 5,:inline_format => true
			# /Library/FontsCourier\ New\ Italic.ttf
end
