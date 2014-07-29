require 'pry-byebug'
require './pig_latin.rb'

describe 'translate to pig latin' do
	it 'returns error if word is not a word' do
		expect(PigLatin.translate(2352)).to eq("That's not a word.")
	end

	it 'translates word of initial consonant/cluster to Pig Latin' do
		expect(PigLatin.translate("chair")).to eq("airchay")
		expect(PigLatin.translate("question")).to eq("uestionqay")
	end

	it 'translates words of initial vowel/cluster to Pig Latin' do
		expect(PigLatin.translate("egg")).to eq("eggway")
	end

	it 'translates words initialized with y and y in middle of string' do
		expect(PigLatin.translate("yellow")).to eq("ellowyay")
	end

	it 'translates words with y in middle of string' do
		expect(PigLatin.translate("rhythm")).to eq("ythmrhay")
	end

	it 'translates a sentence and maintains spaces' do
		expect(PigLatin.translate_sentence("Cool dog aardvark what")).to eq("oolcay ogday aardvarkway atwhay")
	end
end