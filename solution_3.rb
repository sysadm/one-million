#!/usr/bin/env ruby
require 'to_words'

start = Time.now
(1..1000000).to_a.each { |i| puts i.to_words.gsub(/,/, '').squeeze(" ").downcase }
finish = Time.now

puts "Runtime: #{(finish - start).to_s} sec"
#Runtime: 24.565875 sec