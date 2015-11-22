require 'twilio-ruby'
 
class TwilioController < ApplicationController
  include Webhookable
 
  after_filter :set_header
 
  skip_before_action :verify_authenticity_token
 
  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hello Melissa, Did you know that I love you very very very very very very much? Oh by the way, it is Philip', :voice => 'man'
         r.Play 'http://linode.rabasa.com/cantina.mp3'
    end
 
    render_twiml response
  end

  #def status
  #  render_twiml Twilio::TwiML::Response.new
  #end

end