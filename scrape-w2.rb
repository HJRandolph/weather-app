
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::XML(open('http://api.wunderground.com/auto/wui/geo/WXCurrentObXML/index.xml?query=KBHB'))

weather_report = %w[weather wind_dir wind_mph pressure_string].inject({}) { |h, n|
  h[n.to_sym] = doc.at('current_observation ' << n).text
  h 
} 
weather_report # => {:weather=>"Overcast", :wind_dir=>"South", :wind_mph=>"6", :pressure_string=>"29.67 in (1005 mb)"}