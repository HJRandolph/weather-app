require 'barometer'

puts 'Please enter your zip code, postal code, or city and state/province.'
area = gets
area = area.chomp

puts "Please enter your phone number."
wtn = gets
wtn = wtn.chomp


barometer = Barometer.new(area)
weather = barometer.measure

	ans = "\nToday's high: " + weather.today.high.f + "F. \n" + 
	"Currently in " + area + " it's " + weather.current.temperature.f + "F and " + weather.current.condition.downcase + "." + "\nTomorrow will have a high of " + weather.tomorrow.high.f + "F."

require 'rubygems'
require 'twilio-ruby'

account_sid = "ACf2c1bfb41e3119dd2ec8f614917cfeee"
auth_token = "ff0e7bbb8af0adb7998a52ab7185b304"

@client = Twilio::REST::Client.new(account_sid, auth_token)
message = @client.account.messages.create(
:from => "+1 857-576-2043",
:to => wtn,
:body => ans
)

puts message.to

