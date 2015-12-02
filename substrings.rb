dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input, dictionary)

  words = input.downcase.split
  frequencies = Hash.new(0)

  words.map do |word|
    dictionary.map do |dict|
      if word.include?(dict)
        frequencies[dict] += 1
      end
    end
  end

  frequencies

end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)