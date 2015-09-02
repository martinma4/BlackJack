class ScissorsPaperRock
	def initialize(choice)
		@choice = choice
		@choices = ["sissors", "paper", "rock"]
	end

	def ranchoice
		index = rand(@choices.length)
		@choices[index]
	end
end