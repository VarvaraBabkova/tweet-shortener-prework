
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
    return dict[word.downcase]
  end
  #return nil
end

def word_substituter (tweet)
  tweet = tweet.split(" ")
  tweet_str = ""
  tweet.each do |word|
    if dictionary(word) != nil
      word = dictionary(word)
    end
    tweet_str += word + " "
  end
  tweet_str = tweet_str.chomp(" ")
  return tweet_str
end

def bulk_tweet_shortener (array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener (tweet)
#  array.each do |tweet|
  str = tweet.split(" ")
    if str.length > 140
      puts word_substituter(tweet)

    end
#  end
end

word_substituter("Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!")
