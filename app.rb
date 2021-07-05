require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times do 
      str += params[:phrase]
    end
    str
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

    if params[:operation] == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation]== "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    elsif params[:operation] == "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end