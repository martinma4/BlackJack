Feature: start scissors-rock-paper game
	User and computer choose from choices which is "scissors, paper, rock" respectively. The result is for users: "+" for win, "-" for lose and "." for draw. 

	The rule of the game is illustrated as "scissors" win "paper", "paper" win "rock" and "rock" win "scissors". 
	If the user wins "+" is given, if the computer wins a "-" is given.
	# After giving the result of comparison the game of "Blackjack" begins.

	Scenario: Test the computer choice is randam
		Given the user chooses a choice
		When the computer chooses 100 times
		Then the choice should be from "choices"
		And  the distribution of "scissors" is proximately equal 1/3
		And  the distribution of "paper" is proximately equal 1/3
		And  the distribution of "rock" is proximately equal 1/3

	Scenario Outline: Test the game rules
		Given the user chooses "<user_spr>"
		When the computer chooses "<computer_spr>"
		Then the result should be "<result>"

		Scenarios: User chooses "s"
		| user_spr | computer_spr | result |
		|    s     |      p       |    +   |
		|    s     |      r       |    -   |
		|    s     |      s       |    .   |

		Scenarios: User chooses "p"
		| user_spr | computer_spr | result |		
		|    p     |      r       |    +   |
		|    p     |      s       |    -   |
		|    p     |      p       |    .   |

		Scenarios: User chooses "r"
		| user_spr | computer_spr | result |		
		|    r     |      s       |    +   |
		|    r     |      p       |    -   |
		|    r     |      r       |    .   |