require 'nokogiri'
require 'open-uri'

# use Nokogiri to pull inner html for ingredients list from recipe website
doc = Nokogiri::HTML(URI.open("https://recipes.sainsburys.co.uk/recipes/italian-pressed-sandwich"))

# two spans in the <li>, class="ingredient-label" & ingredient-measurement
# search = doc.search('span.ingredient-label')
# search = doc.search('span.ingredient-measurement')
# p search

list_item = doc.css('.ingredient-label')
# list_unit= doc.css('.ingredient-measurement').children[1]
# p list_item.class
# p list_item
# p list_item.class
# p list_unit
# p list_unit.class

# loop through the inner_html of the items in the list

list_item.each do |x|
    puts x.inner_html     
end


