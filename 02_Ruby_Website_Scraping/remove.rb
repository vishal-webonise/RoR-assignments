require 'rubygems'
require 'open-uri'
require 'nokogiri'

@url = "http://www.simplyrecipes.com/recipes/classic_baked_acorn_squash/"
@doc = Nokogiri::HTML(open(@url))
	@arr = []
	@e = @doc.xpath('//li[@class="ingredient"]').each { |v|  @arr.push(v.text) }
	puts @arr.join("|").to_s
		# puts @e
	# @e = @doc.xpath('//img[@class="photo"]')["src"].text.to_i
	# 	puts @e