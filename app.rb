require "sinatra"
require_relative "random_pairing_functions.rb"
enable :sessions
get '/' do
	addedName =  session[:addedName]
	results = session[:results] || ""
	erb :random_pairs_page1, locals:{results: results, addedName: addedName}
end
post '/random_pairs_page1' do
	addedName = params[:addedName] || []
	results = pairing(addedName)
	session[:results] = results
	redirect '/random_pairs_final_page'
	erb :random_pairs_final_page, locals:{results: results, addedName: addedName}
end
get '/random_pairs_final_page' do
	# erb :random_pairs_final_page
end
post '/random_pairs_final_page' do

end
post '/restart_app' do
	redirect '/random_pairs_page1'
end