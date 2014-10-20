class Game

	def initialize
		@rolls = [] # initialize an array to hold the score
	end
	
	def roll pins
		@rolls.push pins
	end

	def score
		result = 0
		rollIndex = 0
		10.times do 
			if @rolls[rollIndex] + @rolls[rollIndex+1] ==10
				result += 10 + @rolls[rollIndex+2] 
				rollIndex += 2
			elsif @rolls[rollIndex]==10
				result += 10 + @rolls[rollIndex+1] + @rolls[rollIndex+2] 
				rollIndex += 1
			else 
				result += @rolls[rollIndex] + @rolls[rollIndex+1]
				rollIndex += 2
			end
			
		end
		result
	end

end



