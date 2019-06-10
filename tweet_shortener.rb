
def dictionary (word)

  dict = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2' ,
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
  if dict.keys.include?(word.downcase)
    return dict[word]
  end
  return nil
end
def word_substituter (tweet)
  tweet = tweet.split(" ")
  tweet.each do |word|
    word = dictionary(word) if dictionary(word) != nil
  end

  return tweet.join(" ")
end
