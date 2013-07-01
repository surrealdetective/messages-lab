require 'sinatra'
require 'json'
require "sinatra/activerecord"
require 'debugger'


set :database, "sqlite3:///ichat.db"


get '/' do
  @messages = Message.all
  erb :messages
end

get '/reset' do
   Message.delete_all
  "Messages reset!"
end

post '/' do
  # TODO: Read the message contents, save to the database
  Message.create(:sender => params[:sender],
    :receiver => params[:receiver],
    :content => params[:message])
  redirect '/'
end

class Message < ActiveRecord::Base

  # TODO: Use this class as a table in the database

end