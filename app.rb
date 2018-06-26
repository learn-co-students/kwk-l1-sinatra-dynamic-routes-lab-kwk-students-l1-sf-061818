require_relative 'config/environment'

class App < Sinatra::Base
get '/reversename/:name' do
  @reverse1=params[:name]
  "#{@reverse1.reverse}"
end 

get '/square/:number' do
  @number1=params[:number].to_f
  square = @number1 * @number1
  "#{square}"
end

get '/say/:number/:phrase' do
  @number1=params[:number].to_i
  @phrase=params[:phrase]
  @phrase * @number1
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  @word1=params[:word1]
  @word2=params[:word2]
  @word3=params[:word3]
  @word4=params[:word4]
  @word5=params[:word5]
  @word1+" "+@word2+" "+@word3+" "+@word4+" "+@word5+"."
end

get '/:operation/:number1/:number2' do
  @number1=params[:number1].to_f
  @number2=params[:number2].to_f
  @operation=params[:operation]
  if @operation == "add"
    @add= @number1 + @number2
    "#{@add}"
  elsif @operation == "subtract"
    @subtract= @number1 - @number2
    "#{@subtract}"
  elsif @operation == "multiply"
     @multiply= @number1 * @number2
     "#{@multiply}"
  elsif @operation == "divide"
    @divide= @number1 / @number2
    "#{@divide}"
  else 
    "Error"
  end
end

end
