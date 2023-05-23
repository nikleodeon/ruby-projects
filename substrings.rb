dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, array)
  counter = Hash.new(0)
  split_string = string.split(" ")
  p split_string
  split_string.each do |split_word|
    lowercase_split = split_word.downcase
    array.each do |word|
      lowercase_word = word.downcase
      if lowercase_split.include?(lowercase_word)
      counter[word] += 1
      end
    end
  end
  puts counter
end

substring("Howdy partner, sit down! How's it going?", dictionary)