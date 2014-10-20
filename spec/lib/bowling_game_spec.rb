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
end
