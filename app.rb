require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  phrase = params.fetch('phrase')
  match_word = params.fetch('match_word')
  @result = phrase.word_count(match_word)
  erb(:result)
end
