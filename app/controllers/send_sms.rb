require 'rubygems'
# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
class SMS
    def send_sms
        account_sid = 'REDACTED'
        auth_token = 'REDACTED'
        client = Twilio::REST::Client.new(account_sid, auth_token)

        from = 'REDACTED' # Your Twilio number
        to = 'REDACTED' # Your mobile phone number

        client.messages.create(
        from: from,
        to: to,
        body: "Hi there! Congratulations, your hero submission is successful. Your hero is on the Wall of Heroes!"
        )
    end
end