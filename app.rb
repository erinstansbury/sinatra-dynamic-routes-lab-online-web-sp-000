require_relative 'config/environment'

class App < Sinatra::Base
 get '/reversename/:name'
  params[:name]
 end

end