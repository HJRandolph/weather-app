require 'nokogiri'
require 'open-uri'

doc = Nokogiri::XML(open("https://www.wunderground.com/"))

search = doc.search('.curCond').inner_html
#search2 = doc.title
puts search
#puts search2