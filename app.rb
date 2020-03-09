require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end

  get "/say/:number/:phrase" do 
    @num = params[:number].to_i
    @phrase = params[:phrase]

    @phrase * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []
    arr << params[:word1]
    arr << params[:word2]
    arr << params[:word3]
    arr << params[:word4]
    arr << params[:word5]

    arr.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @op
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end    
  end
end