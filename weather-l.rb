require 'barometer'

barometer = Barometer.new('Braintree')
weather = barometer.measure

puts weather.current.condition

