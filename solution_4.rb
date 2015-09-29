#!/usr/bin/env ruby
class Fixnum
  NUMBERS_TO_NAME = {
      1000000 => "one million",
      1000 => "one thousand",
      100 => "one hundred",
      90 => "ninety",
      80 => "eighty",
      70 => "seventy",
      60 => "sixty",
      50 => "fifty",
      40 => "forty",
      30 => "thirty",
      20 => "twenty",
      19=>"nineteen",
      18=>"eighteen",
      17=>"seventeen",
      16=>"sixteen",
      15=>"fifteen",
      14=>"fourteen",
      13=>"thirteen",
      12=>"twelve",
      11 => "eleven",
      10 => "ten",
      9 => "nine",
      8 => "eight",
      7 => "seven",
      6 => "six",
      5 => "five",
      4 => "four",
      3 => "three",
      2 => "two",
      1 => "one"
  }

  def to_words
    NUMBERS_TO_NAME.has_key?(self) ? NUMBERS_TO_NAME[self] : number_convert(self).squeeze(" ")
  end

  private

  def number_convert(int)
    if int > 1000
      thousands = int / 1000
      hundreds = int % 1000
      hundreds == 0 ? addon = "" : addon = " #{hundreds.to_words}"
      "#{thousands.to_words} thousand #{addon}"
    else
      hundreds_to_words int
    end
  end

  def hundreds_to_words(int)
    str = ""
    hundreds = int/100
    str = NUMBERS_TO_NAME[hundreds] + " hundred " if hundreds > 0
    return str if int%100 == 0
    tens = (int - hundreds * 100) / 10
    if NUMBERS_TO_NAME.has_key?(int-hundreds*100)
      str + NUMBERS_TO_NAME[int-hundreds*100]
    else
      str.empty? ? addon = "" : addon = " and "
      if tens >= 2
        str += "#{addon}#{NUMBERS_TO_NAME[tens*10]} #{NUMBERS_TO_NAME[int-hundreds*100-tens*10]}"
      end
    end
  end
end

start = Time.now
(1..1000000).to_a.each { |i| puts i.to_words }
finish = Time.now

puts "Runtime: #{(finish - start).to_s} sec"
#Runtime: 15.885537 sec