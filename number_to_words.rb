class NumberToWords
  
  def initialize(arg)
    
    raise "expected only integers" if arg[0].class == String
    raise 'expected 1 argument' if arg.length > 1 
    raise "expected only positive number" if arg[0] < 0 
    raise "expected less than 5 digit number" if arg[0] > 9999 
    
  end

  def to_words

  end
end
     
