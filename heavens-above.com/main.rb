require 'uri'
require 'net/http'
require 'nokogiri'
#require 'open-uri'
#require 'date'
#require 'httparty'
#require 'time'

uri  = URI.parse(URI.encode("http://heavens-above.com/IridiumFlares.aspx?lat=0&lng=0&loc=Unspecified&alt=0&tz=UCT"))
res  = Net::HTTP.get_response(uri)
page = Nokogiri::HTML.parse(res.body)

page.css(".standardTable tbody .clickableRow td a").each do |p|
  puts p.text
end
