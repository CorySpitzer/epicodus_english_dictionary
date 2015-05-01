require('sinatra')
require('sinatra/reloader')
require('./lib/word')
also_reload('./lib/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

post('/') do
  word = params.fetch('word')
  definition = params.fetch('definition')
  entry = Word.new(word)
  entry.add_definition(definition)
  entry.save()
  erb(:index)
end
