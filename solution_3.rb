#!/usr/bin/env ruby
require 'to_words'

(1..1000000).to_a.each { |i| puts i.to_words.gsub(/,/, '').squeeze(" ").downcase }
