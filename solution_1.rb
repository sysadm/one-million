#!/usr/bin/env ruby
require 'numbers_and_words'

start = Time.now
(1..1000000).to_a.each { |i| puts i.to_words remove_hyphen: true, hundreds_with_union: true }
finish = Time.now

puts "Runtime: #{(finish - start).to_s} sec"
#Runtime: 830.08555 sec
