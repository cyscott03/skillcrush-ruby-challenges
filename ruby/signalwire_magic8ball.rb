#use SignalWire to text myself
require 'rubygems'
require 'twilio-ruby'

#connect to Twilio API using account SID and auth token
account_sid = ""
auth_token = ""

@client = Signalwire::REST::Client.new(account_sid, auth_token)

#text yourself a message
message = @client.account.messages.create(
	:from => "+your SignalWire number",
	:to => "+your own number",
	:body => "Haaaii!"
)

puts message.to

$(document).ready(function() {
    // start writing your magic 8 ball logic here!
    $('form#magic-eight-ball').submit(function(e) {
        e.preventDefault();
        var answers = ['Yes', 'No', 'Maybe', 'Oh who knows!'];
        var random = answers[Math.floor(Math.random() * answers.length)];
        $('div#answer').text(random).fadeIn('fast');
    });
});
