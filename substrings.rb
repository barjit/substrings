dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)
  
  words = input.downcase.scan(/[\w']+/)
  frequencies = Hash.new(0)
  
  search = words.map do |word|
    if dictionary.include?(word)
      frequencies[word] += 1
    end
  end


  frequencies.each {|word, count| puts "#{word} : #{count}"}

end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)