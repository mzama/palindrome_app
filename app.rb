require 'sinatra'

get '/' do
    #Any page will be placed into layout.erb by default, so if we had one layout defined there, this could just be
    #erb :index
    #However, I have instead changed the name to default_page.erb to demonstrate how to inherit a specific layout
    erb :index, :layout => :default_page
end

get '/about' do
    erb :about, :layout => :default_page
end

get '/palindrome' do
    erb :palindrome, :layout => :default_page
end