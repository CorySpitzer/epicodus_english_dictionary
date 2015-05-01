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
  @entry = Word.new(:name => word)
  @entry.add_definition(:definition => definition)
  @entry.save()
  erb(:success)
end

get('/success') do
  erb(:success)
end

get('/dictionary/:word') do
  @words = Word.all()
  erb(:dictionary)
end

# get('/vehicles/:id') do
#   @vehicle = Vehicle.find(params.fetch('id'))
#   erb(:vehicle)
# end
