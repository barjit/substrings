dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
  
  words = input.downcase.split
  frequencies = Hash.new(0)
  
  words.each {|word| frequencies[word] += 1}
  frequencies.each {|word, count| puts "#{word} : #{count}"}

end





substrings("below", dictionary)


