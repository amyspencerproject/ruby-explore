require 'rubygems'
require 'twilio-ruby'

account_sid = "AC" # Your Test Account SID from www.twilio.com/console/settings
auth_token = ""   # Your Test Auth Token from www.twilio.com/console/settings


puts "Ask me a question?"
question=gets.chomp
if (question.class == String)
    answer = [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Reply hazy, try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
    ]
    number=rand(20)

    @client = Twilio::REST::Client.new(account_sid, auth_token)
    message = @client.api.account.messages.create(
    :from => "+19594569570", 
    :to =>"+19705530150", 
    :body => "Your answer is: #{answer[number]}"
    )
    puts "Check you phone for the answer"
end      



# puts "Your answer is: #{answer[number]}"

# @client = Twilio::REST::Client.new(account_sid, auth_token)
# message = @client.api.account.messages.create(
#   :from => "+19594569570", 
#   :to =>"+19705530150", 
#   :body => "Your answer is: #{answer[number]}"
# )
# puts "Check you phone for the answer"