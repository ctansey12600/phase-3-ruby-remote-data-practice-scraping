require 'nokogiri'
require 'open-uri'

html = open("http://flatironschool.com/")
doc = Nokogiri::HTML(html)
courses = doc.css(".heading-20-semibold.color-black.card-title-tl")

courses.each do |course|
  puts course.text.strip
end 