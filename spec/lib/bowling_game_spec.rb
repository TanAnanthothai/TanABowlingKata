require "spec_helper"
require "bowling_game"   # name of the class we have just created
 
describe 'BowlingGameTest' do

	before do 
		puts "\nNew Bowling game is created"
		@game = Game.new
	end


	it('all 0 games') do
		puts "\nall 0 games"
		game = Game.new
		20.times{game.roll 0}
		expect(game.score).to eq 0 
	end

	it('all ones') do
		puts "\nall ones games"
		game = Game.new
		20.times{game.roll 1}
		expect(game.score).to eq 20
	end

	it('a spare') do
		puts "\na spare"
		@game.roll 5
		@game.roll 5
		@game.roll 3
		17.times{@game.roll 0}
		expect(@game.score).to eq 16
	end 

	it('a strike') do
		puts "\na strike"
		@game.roll 10
		@game.roll 4
		@game.roll 3
		16.times{@game.roll 0}
		expect(@game.score).to eq 24
	end 

	it('all strikes') do
		puts "\nall strikes"
		12.times{@game.roll 10}
		expect(@game.score).to eq 300
	end

	it('all spares') do
		puts "\nall spares"
		21.times{@game.roll 5}
		expect(@game.score).to eq 150
	end 

	it ('example score, from excel file') do
		#frame 1
		@game.roll 10
		#frame 2
		@game.roll 8 
		@game.roll 1 
		#28. roll28
		#frame 3
		@game.roll 2
		@game.roll 8
		#frame 4
		@game.roll 5 
		@game.roll 4
		#52, roll12
		
		#frame 5
		@game.roll 10
		
		# #frame 6
		 @game.roll 10
		 #9.times{@game.roll 0}
		#74 roll9
		# #frame 7
		  @game.roll 10
		 
		# # #frame 8
		  @game.roll 5
		 
		  @game.roll 5
		#137, 5rolls
		# # #frame 9
		  @game.roll 10
		
		# # #frame 10
		 @game.roll 10		
		2.times{@game.roll 0}
		expect(@game.score).to eq 177

	end
end
