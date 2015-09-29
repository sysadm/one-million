#!/usr/bin/env ruby
require 'humanize'

start = Time.now
(1..1000000).to_a.each { |i| puts i.humanize.gsub(/,/, '').gsub(/-/, ' ') }
finish = Time.now

puts "Runtime: #{(finish - start).to_s} sec"
#Runtime: 19.863967 sec