require 'pig_latin'
require 'io/console'

require_relative '../pig_latin.rb'

# To run, type 'bundle install' then type 'bundle exec ruby pig_client.rb'

puts "Welcome to Pig Latin Translator!"

while (true)
	puts "Give me a word or sentence to translate or type 'quit' to quit."
	response = gets.chomp

	if response == 'quit'
		break
	elsif response =~ /\s/
		pig_latin_call = PigLatin.translate_sentence(response)
		puts pig_latin_call
	else
		pig_latin_call = PigLatin.translate(response)
		puts pig_latin_call
	end

end



