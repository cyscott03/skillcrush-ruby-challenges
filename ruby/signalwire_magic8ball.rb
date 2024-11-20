#use SignalWire to text myself
require 'rubygems'
require 'signalwire'

#connect to SignalWire API using account SID and auth token
account_sid = "b241c29e-066b-493f-8a73-037e48c40bbf"
auth_token = "PT81e4538d1b10b73efd98f92a0ea43676cb1122c5ade3150a"

@client = Signalwire::REST::Client.new(account_sid, auth_token)

#text yourself a message
message = @client.account.messages.create(
	:from => "+12012772800",
	:to => "+19105464691",
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
