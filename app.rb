require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get '/reversename/:name' do
  @user = params[:name]
  "#{@user.reverse}"
end
get '/square/:number' do 
  @square = params[:number].to_f
  @product = @square*@square
  "#{@product}"
end
get '/say/:number/:phrase' do
  @num = params[:number].to_i
  @word = params[:phrase]
  @word*@num
end
get '/say/:word1/:word2/:word3/:word4/:word5' do
@phrase1 = params[:word1]
@phrase2 = params[:word2]
@phrase3 = params[:word3]
@phrase4 = params[:word4]
@phrase5 = params[:word5]
"#{@phrase1} #{@phrase2} #{@phrase3} #{@phrase4} #{@phrase5}."
end
get '/:operation/:number1/:number2' do
  @num1 = params[:number1].to_f
  @num2 = params[:number2].to_f
  @operation = params[:operation]
  if @operation == "add"
    @add = @num1+@num2
    "#{@add}"
  elsif @operation == "subtract" 
    @subtract = @num1-@num2 
    "#{@subtract}"
  elsif @operation == "multiply"
    @multiply = @num1*@num2
    "#{@multiply}"
  else @operation == "divide"
    @divide = @num1/@num2
    "#{@divide}"
  end
end
end