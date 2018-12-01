def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2", 
    "too" => "2",
    "for" => "4", 
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str)
  arr = str.split(" ")
  new_str = arr.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  
  new_str.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator(tweet)
  shortened = word_substituter(tweet)
  
  if shortened.length > 140
    shortened[0..136] + "..."
  else
    shortened
  end
end
