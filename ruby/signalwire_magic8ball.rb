#use SignalWire to text myself
require 'rubygems'
require 'signalwire'


#connect to SignalWire API using account SID and auth token
project_sid = "b241c29e-066b-493f-8a73-037e48c40bbf" # Replace with your SignalWire Project SID
auth_token = "PT81e4538d1b10b73efd98f92a0ea43676cb1122c5ade3150a" # Replace with your SignalWire Auth Token
signalwire_space_url = "swsupport.signalwire.com" # Replace with your SignalWire Space URL
signalwire_phone_number = '+12012772800' # Replace with your SignalWire phone number
recipient_phone_number = '+19105464691' # Replace with the recipient's phone number

# Magic 8-Ball possible answers
answers = [
  "It is certain.",
  "It is decidedly so.",
  "Without a doubt.",
  "Yes, definitely.",
  "You may rely on it.",
  "As I see it, yes.",
  "Most likely.",
  "Outlook good.",
  "Yes.",
  "Signs point to yes.",
  "Reply hazy, try again.",
  "Ask again later.",
  "Better not tell you now.",
  "Cannot predict now.",
  "Concentrate and ask again.",
  "Don't count on it.",
  "My reply is no.",
  "My sources say no.",
  "Outlook not so good.",
  "Very doubtful."
]

# Accept a question from the user
puts "Ask the Magic 8-Ball a question:"
question = gets.chomp

# Select a random answer
random_answer = answers.sample

# Send the answer via text
begin

@client = Signalwire::REST::Client.new(project_sid, auth_token, signalwire_space_url)

#text yourself a message
message = @client.messages.create(
	from: signalwire_phone_number,
	to: recipient_phone_number,
	body: "Question: #{question}\nMagic 8-Ball says: #{random_answer}"
)

  puts "The Magic 8-Ball has spoken! Check your phone for the answer."
rescue StandardError => e
  puts "An error occurred: #{e.message}"
end


