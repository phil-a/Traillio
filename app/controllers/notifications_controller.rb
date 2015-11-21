class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify
    #Initialize client object that you can use to make requests to Twilio REST API
    client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid, Rails.application.secrets.twilio_auth_token
    message = client.messages.create from: '9022001456
', to: '4168988990', body: 'Learning to send SMS you are.'
    render plain: message.status
  end
 
end
