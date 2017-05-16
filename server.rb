require 'sinatra'
get '/' do
  File.open("hello.txt")
end