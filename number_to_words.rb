class NumberToWords
  
  def initialize(arg)
    raise "expected only integers" if arg[0].class == String
    raise 'expected 1 argument' if arg.length > 1 
    raise "expected only positive number" if arg[0] < 0 
    raise "expected less than 5 digit number" if arg[0] > 9999    
    @number = arg[0] 
  end

  def to_words
    tmp = @number
    output = ""
      
    begin 
      case
      when tmp == 0 
        output << exceptions[tmp]  
      when tmp > 0 && tmp < 20   
        output <<  " " + exceptions[tmp] 
        tmp = 0 
      when tmp >= 20 && tmp < 100  
        x = (tmp/10).round * 10      
        output << " " + exceptions[x]   
        tmp = tmp - x     
      when tmp >= 100 && tmp < 1000 
        x = (tmp/100).round  
        output << exceptions[x] + " hundred" 
        tmp = tmp - x * 100
        output << " and" unless tmp == 0 
      when tmp >= 1000 && tmp < 10000
        x = (tmp/1000).round
        output << exceptions[x] + " thousand "
        tmp = tmp - x * 1000 
      end 
    end while tmp > 0   
    output.strip   
  end

  def exceptions 
    {
      0 => "zero",
      1 => "one",
      2 => "two",
      3 => "three",
      4 => "four",
      5 => "five",
      6 => "six",
      7 => "seven",
      8 => "eight",
      9 => "nine",
      10 => "ten",
      11 => "eleven",
      12 => "twelve",
      13 => "thirteen",
      14 => "fourteen",
      15 => "fifteen",
      16 => "sixteen" ,
      17 => "seventeen",
      18 => "eighteen",
      19 => "nineteen",
      20 => "twenty",
      30 => "thirty",
      40 => "fourty",
      50 => "fifty",
      60 => "sixty",
      70 => "seventy",
      80 => "eighty",
      90 => "ninety"
    }
  end

end
 