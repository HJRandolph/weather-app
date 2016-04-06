require 'barometer'

barometer = Barometer.new('Paris')
weather = barometer.measure

puts weather.current.temperature
