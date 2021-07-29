#!/usr/bin/ruby
# Required dependencies
require 'httpx'

# base_url will get the current time. Feel free to change the base_url to another.
base_url = 'http://worldtimeapi.org/api/timezone/America/New_York'
response = HTTPX.get(base_url)
x = 0

# until x >= 500000 means it will get the base_url 50000 times.
until x >= 500000
  if response.status == 200
    response2 = HTTPX.get(base_url)
    puts response2.body
    puts ''
    puts 'E.T. Phone Home! - HTTP GET is Working!'
  else
    puts 'E.T. is lost! - HTTP GET is Failing!'
  end
  x += 1
  sleep 1
end