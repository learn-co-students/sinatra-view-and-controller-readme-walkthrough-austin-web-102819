require_relative 'config/environment'

class App < Sinatra::Base
  # Accept a GET method on /reverse
  # Display and render the reverse.erb file (which houses the form)
  get '/reverse' do
    erb :reverse
  end

  # Accept a POST request on /reverse
  # Display and render the reversed.erb (which shows the user's posted data)
  post '/reverse' do
    # puts params
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end