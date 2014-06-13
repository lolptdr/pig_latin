require 'pry-byebug'
require './pig_latin.rb'

describe 'translate to pig latin' do
	it 'translates word of initial consonant/cluster to Pig Latin' do
		expect(PigLatin.translate_to_pig_latin("chair")).to eq("airchay")
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