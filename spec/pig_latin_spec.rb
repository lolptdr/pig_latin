require 'pry-byebug'
require './pig_latin.rb'

describe 'translate to pig latin' do
	it 'returns error if word is not a word' do
		expect(PigLatin.translate_to_pig_latin(2352)).to eq("That's not a word.")
	end

	it 'translates word of initial consonant/cluster to Pig Latin' do
		expect(PigLatin.translate_to_pig_latin("chair")).to eq("airchay")
		expect(PigLatin.translate_to_pig_latin("question")).to eq("uestionqay")
	end

	it 'translates words of initial vowel/cluster to Pig Latin' do
		expect(PigLatin.translate_to_pig_latin("egg")).to eq("eggway")
	end

	it 'translates words initialized with y and y in middle of string' do
		expect(PigLatin.translate_to_pig_latin("yellow")).to eq("ellowyay")
	end

	it 'translates words with y in middle of string' do
		expect(PigLatin.translate_to_pig_latin("rhythm")).to eq("ythmrhay")
	end
end