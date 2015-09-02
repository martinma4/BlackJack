require 'byebug'
require 'scissorspaperrock'

Given /^the user chooses a choice$/ do
	@spr = ScissorsPaperRock.new("choice")
end

When /^the computer chooses 100 times$/ do
	@choices = []
	100.times do
		@ranchoice = @spr.ranchoice
		byebug
		@choices << @ranchoice
	end
end

Then /^the distribution of "(\".*\")" is proximately equal 1\/3$/ do |ran|
	scissors_count, paper_count, rock_count = 0, 0, 0
	@choices.each do |choice|	
		case choice
		when "scissors"
			scissors_count += 1
		when "paper"
			paper_count += 1
		when "rock"
			rock_count += 1
		end
	end
end