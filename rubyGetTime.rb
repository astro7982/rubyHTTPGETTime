#!/usr/bin/ruby

require 'rubygems'
require 'rubygems/gem_runner'
require 'rubygems/exceptions'

puts 'Should install dependencies? Enter Yes or No.'
puts ''
puts 'If Yes, be sure to run as root (sudo).'
installdep = gets.chomp

def install(lib)
  begin   
  Gem::GemRunner.new.run ['install', lib]
rescue Gem::SystemExitException => e
end

if %w[Yes yes y].include?(installdep)
  # Install Dependencies
  puts 'Installing Dependencies'
  install 'httpx'
else
  # Checking Dependenices.
  puts 'Checking Dependencies'
  require 'httpx'
end

# base_url will get the current time. 
base_url = 'http://worldtimeapi.org/api/timezone/America/New_York'
response = HTTPX.get(base_url)
 
x = 0

# until x >= 333 means it will get the base_url 333 times.
until x >= 333
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