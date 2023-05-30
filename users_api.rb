# users_api.rb
require 'sinatra'
require 'json'
# In memory array of users
users = [
    { id: 1, name: 'John Doe', email: 'john@gmail.com' },
    { id: 2, name: 'Jane Doe', email: 'jane@gmail.com' }
]
# GET /users
get '/users' do
    content_type :json
    users.to_json
end
# GET /users/:id
get '/users/:id' do
    content_type :json
    users.select { |user| user[:id] == params[:id].to_i }.first.to_json
end

