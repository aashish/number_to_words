require_relative 'spec_helper'

describe "Number to Words" do 
  it "should accept one argument" do 
     expect{NumberToWords.new([23, 44])}.to raise_error("expected 1 argument")   
  end

  it "should accept positive numbers only" do 
     expect{NumberToWords.new([-24])}.to raise_error("expected only positive number")
  end  

  it "should accept less than 5 digit number only" do 
     expect{NumberToWords.new([23556])}.to raise_error("expected less than 5 digit number")
  end

  it "should accept integers only" do 
     expect{NumberToWords.new(['ffssgg'])}.to raise_error("expected only integers")
  end

  it "should print the digits 0-9 correctly" do
    numbers = %w[zero one two three four five six seven eight nine]
    numbers.each_with_index do |number, index|
      NumberToWords.new(index).to_words.should==number
    end     
  end
 
  it "should print the digits 11-19 correctly" do
    words = %w[eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen]
    numbers = [11,12,13,14,15,16,17,18,19]
    numbers.each_with_index do |number, index|
      NumberToWords.new(index).to_words.should==words[index]
    end   
  end

  it "should handle two digit numbers" do
    NumberToWords.new(21).to_words.should == "twenty one"
  end
 
  it "should handle three digit numbers" do
    NumberToWords.new(113).to_words. should == "one hundred and thirteen"
    NumberToWords.new(139).to_words. should == "two hundred and ninety nine"
    NumberToWords.new(300).to_words. should == "three hundred"
    NumberToWords.new(101).to_words. should == "one hundred and one"
  end

  it "should handle four digit numbers" do
    NumberToWords.new(5113).to_words. should == "five thousand one hundred and thirteen"
    NumberToWords.new(2139).to_words. should == "two thousand two hundred and ninety nine"
    NumberToWords.new(4440).to_words. should == "four thousand four hundred and fourty"
    NumberToWords.new(3101).to_words. should == "three thousand one hundred and one"
  end


end 
