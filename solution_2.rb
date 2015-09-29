#!/usr/bin/env ruby
require 'humanize'

(1..1000000).to_a.each { |i| puts i.humanize.gsub(/,/, '').gsub(/-/, ' ') }
