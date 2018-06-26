require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
get "/reversename/:name" do
  @user_name = params[:name]
  "#{@user_name.reverse}"
end
get "/square/:number" do
  @number = params[:number].to_i 
  @squared = @number * @number
  "#{@squared}"
end
get "/say/:number/:phrase" do
  @number = params[:number].to_i
  @phrase = params[:phrase]
  @phrase*@number
  # until @times == @number
  #   puts "#{@phrase}"
  #   @times += 1
  # end
end
get "/say/:word1/:word2/:word3/:word4/:word5" do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end
get "/:operation/:number1/:number2" do
  op = params[:operation]
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  if op == "add"
    "#{num1 + num2}"
    
  elsif op == "subtract"
    "#{num1 - num2}"
    
  elsif op == "multiply"
    "#{num1 * num2}"
  elsif op == "divide"
    "#{num1 / num2}"
  else
    "error"
  end
end
end
