require('sinatra')
require('sinatra/reloader')
require('./lib/allergies')

get('/') do
  erb(:index)
end

get('/results') do
  @allergy = params.fetch('allergyscore').allergies()
  erb(:results)  
end
