require "sinatra"
require_relative "random_pairing_functions.rb"
enable :sessions
get '/' do
	erb :random_pairs_page1
end
post '/random_pairs_page1' do

end
