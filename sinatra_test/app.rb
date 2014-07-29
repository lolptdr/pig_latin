require 'sinatra'
require 'pig_latin'

set :bind, '0.0.0.0' # => Needed for vagrant ssh

get '/' do
  erb :translate
end

get '/' do
  wordinput = params["word"]
  @new = PigLatin.translate(word)
  erb :translate
end

# post '/translate' do
#   phrase = params["post"]["phrase"]
#   if (phrase)
#     @translated = PigLatin.translate_to_pig_latin(word)
#     @title = "Translate Response"
#     erb :result
#   else
#     @title = "Translate Form"
#     erb :translate
#   end
# end