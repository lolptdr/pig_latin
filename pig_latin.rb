module PigLatin

	def self.translate_to_pig_latin(word)
		word = word.downcase

		# If word begins with vowel, add 'ay'
		if word =~ /\A[aeiou]/ && word !~ /\A[y]/
			new_word = word + "way"
		end

		# If word begins with 'y', move 'y' to end and add 'ay'
		if word =~ /\A[y]/
			word += word.slice!(0)
			new_word = word + "ay"
		end

		# If word begins with consonant or with 'y' as vowel, move the consonant
		# cluster to end and add 'ay'
		if word !~ /\A[aeiouy]/
			while word !~ /\A[aeiouy]/
				word += word.slice!(0)
			end

			new_word = word + "ay"
		end

		return new_word
	end

end