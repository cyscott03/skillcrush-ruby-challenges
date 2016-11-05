#require nokogiri gem & some of it's dependencies
require ‘nokogiri’
require ‘open-uri’

#get HTML for recipe page and assign to a variable
doc = Nokogiri::HTML(open(“http://www.marthastewart.com/312598/brick-pressed-sandwich”))

#search HTML for different types of elements for list of ingredients
search = doc.css('try some elements here')
puts search

#grab list	
list = doc.css('class here!')

#loop through elements and puts the content of each ingredient
list.each do |ingredients|
	puts ingredients.inner_html
end