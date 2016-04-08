require 'Barometer'

def get_weather(location)
 Barometer.new(location).measure
end

puts 'Please enter your zip code, postal code, or city and state/province.'
area = gets
area = area.chomp

weather = get_weather(area)
today = Time.now.strftime('%d').to_i
tomorrow = Time.now.strftime('%d').to_i + 1

weather.forecast.each do |forecast|
 day = forecast.starts_at.day 


if day == today
dayName = 'Today'

elsif day == tomorrow
  dayName = 'Tomorrow'
else
 dayName = forecast.starts_at.strftime('%A')
end


puts dayName + ' is going to be ' + forecast.icon + ' with a low of ' + forecast.low.f.to_s + 'F' + ' and a high of ' + forecast.high.f.to_s + 'F.'

end