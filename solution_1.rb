#!/usr/bin/env ruby
require 'numbers_and_words'

(1..1000000).to_a.each { |i| puts i.to_words remove_hyphen: true, hundreds_with_union: true }
