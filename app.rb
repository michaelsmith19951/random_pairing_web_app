require "sinatra"
require_relative "random_pairing_functions.rb"
enable :sessions
get '/' do
	name =  session[:name]
	results = session[:results] || ""
	erb :random_pairs_page1, locals:{results: results, name: name}
end
post '/random_pairs_page1' do
	puts params
	name = params[:name] || []
	results = pairing(name)
	session[:results] = results
	redirect '/random_pairs_final_page'
	erb :random_pairs_page1
end
get '/random_pairs_final_page' do
	name =  session[:name]
	results = session[:results] || ""
	erb :random_pairs_final_page, locals:{results: results, name: name}
end
post '/random_pairs_final_page' do
	name = params[:name] || []
	results = pairing(name)
	session[:results] = results
	erb :random_pairs_page1
end
post '/restart' do
	redirect '/random_pairs_page1'
end