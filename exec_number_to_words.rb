require_relative 'number_to_words' 

x = NumberToWords.new(ARGV.map(&:to_i))
p x.to_words

