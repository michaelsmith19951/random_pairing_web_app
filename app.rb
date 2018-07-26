require "sinatra"
require_relative "random_pairing_functions.rb"
enable :sessions
get '/' do
	erb :random_pairs_page1
end
post '/random_pairs_page1' do

end
get '/random_pairs_final_page' do
	erb :random_pairs_final_page
end
post '/random_pairs_final_page' do

end
post '/restart_app' do
	redirect '/random_pairs_page1'
end