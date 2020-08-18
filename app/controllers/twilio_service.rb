require 'sinatra'
require 'json'
require 'rest-client'
require 'twilio-ruby'




    get '/texter' do
      jhash = params
      binding.pry
      client = Twilio::REST::Client.new(ENV['A_SID'], ENV['AUTH'])

      from = '+17193542007' # Twilio number
      to = jhash["to"] # A phone number
      body = jhash["body"]

      client.messages.create(
      from: from,
      to: to,
      body: body
      )
    end
