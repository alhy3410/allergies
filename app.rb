require('sinatra')
require('sinatra/reloader')
require('./lib/allergies.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @allergy = params.fetch('allergyscore').to_i.allergies()
  erb(:results)
end
