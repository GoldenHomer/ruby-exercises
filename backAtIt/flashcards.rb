# Capital letter for class name is necessary!
module Flashcards
	# A way to organize all of our classes.
	class Application
		def initialize
			@decks = []
		end

		def << deck
			@decks << deck
		end

		def play
			display_decks
			puts "Pick a deck: "
			deck = get_deck
			deck.play
		end

		def display_decks
			@decks.each { |deck| puts deck.name }
		end

		def get_deck
			name = gets.chomp
			@decks.detect {|deck| deck.name == name}
				# Detect: When the return value of the block of code below == true, then the evaluating stops there.
				# Similiar to switch case in JavaScript
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

	class MultipleAnswerCard < Card
		# Inheritance is done like this in Ruby. Similiar to prototype inheritence in JS.
		def correct? guess
			answers = @back.split(",")
			answers.any? { |answer| answer == guess}
			# Any method returns true if the expression above is true
		end
	end

	class Deck
	attr_reader :name, :cards

		def initialize name
			@name = name
			@cards = []
		end

		def << card
			@cards << card
		end

		def play
			shuffle
			@cards.each(&:play)
			# Each card in @cards has the method play applied to it with this syntax
		end 

		def shuffle
			@cards.shuffle!
			# Remember that a method with ! appended overrides rather than create a copy.
		end
	end
end

card1 = Card.new("cat","neko")
card2 = Card.new("dog","inu")
card3 = Card.new("snake","hebi")

card = Flashcards::MultipleAnswerCard.new("Violin", "baoirin, viiorin")
deck = Flashcards::Deck.new("Japanese")
deck << card

deck2 = Flashcards::Deck.new("Russian")

app = Flashcards::Application.new
app << deck
app << deck2
app.play