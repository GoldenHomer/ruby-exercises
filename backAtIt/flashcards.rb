# Capital letter for class name is necessary!
class Application
	def initialize
		@decks = []
	end

	def << deck
		@decks = deck
	end

	def play
		display_decks
		puts "Pick a deck: "
		deck = get_deck
		deck_play
	end

	def display_decks
		@decks.each do |deck|
			puts deck.name
		end
	end

	def get_deck
		name = gets.chomp
		@decks.detect do |deck|
			# Detect: When the return value of the block of code below == true, then the evaluating stops there.
			# Similiar to switch case in JavaScript
			deck.name == name
		end
	end
end

class Card
	# When you need both a reader and writer for an instance variable, you can shorthand these as:
	attr_accessor :front, :back

	# Paretheses are optional in Ruby
	def initialize front, back
		@front = front
		@back = back
		# Like the keyword this in JavaScript when creating an constructor
	end

	def correct? guess
		guess == @back
	end

	def play
		puts "#{front} > "
		guess = gets.chomp
		if correct? guess
			puts "Correct"
		else
			puts "Incorrect. The answer was #{back}"
	end

	# def front
	# 	@front
	# end

	# Below is shorthand for above (for both parameters)
		#attr_reader :front, :back

	# def front= front
	# 	@front = front
	# end

	# Same here as well
		#attr_writer :front, :back

	# Both of these are typical placed on the first line after class
end

class Deck
attr_reader :name, :cards

	def initialize name
		@name = name
		@cards = []
	end
# Stopped at 55:46!!!!!
	def << card
		@cards << card
	end

	def play
		shuffle
		@cards.each do |card|
			card.play
		end
	end 

	def shuffle
		@cards.shuffle!
		# Remember that a method with ! appended overrides rather than create a copy.
end

card1 = Card.new("cat","neko")
card2 = Card.new("dog","inu")
card3 = Card.new("snake","hebi")

deck = Deck.new("Japanese")

deck << card1
deck << card2
deck << card3

deck2 = Deck.new("Russian")

app = Application.new
app << deck
app << deck2
app.play

deck.cards.each do |card|
	front = card.front
	back = card.back

	puts "#{front} > "
	guess = gets.chomp # Remember, chomp is a method that removes the return character at the end.

	if card.correct?(guess)
		puts "Correct"
	else
		puts "Incorrect. The answer was #{back}"
	end
end