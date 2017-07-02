dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#puts dictionary

#substrings("below", dictionary)

def substrings(phrase,dictionary)
  word_freq = Hash.new(0)
  phrase.split().each do |word|
    dictionary.each do |dict|
      if word.downcase.include?(dict)
        word_freq[dict]+=1
      end
    end
  end
  puts word_freq
end
substrings("below",dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
