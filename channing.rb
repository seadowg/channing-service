require 'sinatra'

class Channing < Sinatra::Base
  get'/' do
    channings = Dir.entries("public").reject do |f|
      [".", "..", ".gitkeep"].include?(f)
    end

    erb :index, :locals => {
      :channing => channings.sample
    }
  end
end
