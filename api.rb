require 'rubygems'
require 'pry'
require 'httparty'
# require 'open-uri'
# require 'json'


  server = "https://eonet.sci.gsfc.nasa.gov/api/v2.1/events" 
      response = HTTParty.get(server, {
        headers: {
            status: "open",
            limit:  "2"
                  }
      })
        events = response["events"] 
        events.each do |key, event| puts "#{event}"
binding.pry
        end



# response["events"].each.with_index do |event, index|
  
#   puts "#{index}"". " "#{event["title"]}"
#   # puts "#{event["description"]}"
#           # binding.pry
    # end
# hash = JSON.parse(buff)
# binding.pry
# hash['title']