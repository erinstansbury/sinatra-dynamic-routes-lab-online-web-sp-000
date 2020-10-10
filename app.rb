require_relative 'config/environment'

class App < Sinatra::Base
 get '/reversename/:name' do
  @name = params[:name]
  rev = @name.reverse
  "#{rev}"
 end

end