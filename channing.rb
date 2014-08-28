require 'sinatra'

module Content
  IMAGES = [
    "0.jpg"
  ]
end

class Channing < Sinatra::Base
  get'/' do
    erb :index, :locals => {
      :channing => Content::IMAGES.sample
    }
  end
end
