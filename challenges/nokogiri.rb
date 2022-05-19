require 'nokogiri'
require 'open-uri'

#grabs the HTML from the skillcrush site and puts into doc variable

# doc = Nokogiri::HTML(URI.open('http://www.runnersworld.com'))
doc = Nokogiri::HTML(URI.open('http://skillcrush.com'))


# puts doc
# puts doc.inspect
# puts doc.search("h2.nav-tagline__text")
# puts doc.css('.nav-tagline__text')
# puts doc.css('.nav-tagline__text').inner_html
# puts doc.css('.nav-tagline__text').children
# puts doc.css('.nav-tagline__text').children[0]
# puts doc.title #website title

puts doc.methods #lists all the methods that can be called on a doc object