require_relative 'config/environment'

class App < Sinatra::Base
 get '/reversename/:name' do
  @name = params[:name]
  @rev = @name.reverse
  "#{@rev}"
 end
 
 get '/square/:number' do
  @num = params[:number].to_i
  "#{@num*@num}"
 end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    i = 0
    while i < @num
      puts "#{@phrase}"
      i += 1
    end
  end

end