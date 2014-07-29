require 'pig_latin'
require 'io/console'

require_relative '../pig_latin.rb'

puts "Welcome to Pig Latin Translator!"

while (true)
	puts "Give me a word to translate or type 'quit' to quit."
	response = gets.chomp

	if response == 'quit'
		break
	else
		pig_latin_call = PigLatin.translate_to_pig_latin(response)
		puts pig_latin_call
	end

end



