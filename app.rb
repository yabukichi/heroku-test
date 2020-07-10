require "bundler/setup"
Bundler.require
require 'open-uri'

if development?
    require 'sinatra/reloader'
end

get '/' do
    res = OpenURI.open_uri('http://weather.livedoor.com/forecast/webservice/json/v1?city=471010')
    @res = JSON.parse(res.read)
    erb :index
end