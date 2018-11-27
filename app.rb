require('sinatra')
require('sinatra/reloader')
require('./lib/triangle-sinatra')
require('pry')

get('/input') do
  erb(:input)
end

post('/output') do
  side_a = params.fetch('sideA')
  side_b = params.fetch('sideB')
  side_c = params.fetch('sideC')
  triangle = Triangle.new(side_a,side_b,side_c)
  @triangle = triangle.triangle_type()
  erb(:output)
end
