require 'rubygems'
require 'twilio-ruby'

account_sid = "AC9472d9d41c43ed5883c38b84d3ca671b"
auth_token = "f8f025aa9068aec2cafb1f4afa993dce"

puts "What is your Yes/No question?"
question = gets.chomp

answer = ["It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"].sample

@client = Twilio::REST::Client.new(account_sid,auth_token)
message = @client.account.messages.create(
    :from => "+12542375112",
    :to => "", #insert ph# in between quotes... 
    :body => answer
        )

puts message.to