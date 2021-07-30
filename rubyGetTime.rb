#!/usr/bin/ruby
# Required dependencies
require 'httpx'

# base_url will get the current time. Feel free to change the base_url to another.
base_url = 'http://worldtimeapi.org/api/timezone/America/New_York'
response = HTTPX.get(base_url)
x = 0
# Amount of HTTP GET request to the base_url.
repeatget = 500000

until x >= repeatget
  if response.status == 200
    response2 = HTTPX.get(base_url)
    puts response2.body
    puts ''
    puts 'HTTP GET is Working!'
  else
    puts 'HTTP GET is Failing! - Please check base_url'
  end
  x += 1
  sleep 1
end