require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
  end
  get '/square/:number' do
    @square = (params[:number].to_i**2).to_s
  end
  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    erb :say
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:num1/:num2' do
    @op = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    case @op
    when 'add'
      value = (@num1+@num2).to_s
    when 'subtract'
      value = (@num1-@num2).to_s
    when 'multiply'
      value = (@num1*@num2).to_s
    when 'divide'
      value = (@num1/@num2).to_s
    else
      'not supported'
    end
  end
end