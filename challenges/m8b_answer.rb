require 'nokogiri'
require 'open-uri'
require 'faraday'

# use Nokogiri to pull inner html for magic8 ball answers from wikipedia
doc = Nokogiri::HTML(URI.open("https://en.wikipedia.org/wiki/Magic_8_Ball#Possible_answers"))

# puts doc.seach("h2")
# search = doc.search(".wikitable")
# puts search
text = doc.css(".wikitable")
puts text

# search.each do |n|
#     puts n.inner_html
# end

# text.each do |x|
#     puts x.inner_html     
# end


#mw-content-text > div.mw-parser-output > table.wikitable > tbody > tr > td:nth-child(1) > p