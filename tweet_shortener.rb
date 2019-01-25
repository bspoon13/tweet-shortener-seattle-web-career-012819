require "pry"

def dictionary(long_word)
short_word = nil
  case long_word
  when "hello"
    short_word = "hi"
  when "to"
    short_word = "2"
  when "two"
    short_word = "2"
  when "too"
    short_word = "2"
  when "four"
    short_word = "4"
  when "for"
    short_word = "4"
  when "be"
    short_word = "b"
  when "you"
    short_word = "u"
  when "at"
    short_word = "@"
  when "and"
    short_word = "&"
  when "Hello"
    short_word = "Hi"
  when "To"
    short_word = "2"
  when "Two"
    short_word = "2"
  when "Too"
    short_word = "2"
  when "Tour"
    short_word = "4"
  when "For"
    short_word = "4"
  when "Be"
    short_word = "B"
  when "You"
    short_word = "U"
  when "At"
    short_word = "@"
  when "And"
    short_word = "&"
  else
    short_word = long_word
  end
short_word
end

def word_substituter(tweet)
shortened_tweet = []
  tweet = tweet.split(" ")
  tweet.each do |word|
    shortened_tweet << dictionary(word)
  end
  shortened_tweet = shortened_tweet.join(" ")
end

def bulk_tweet_shortener(tweets_array)
#shortened_tweets_array = []
  tweets_array.each do |tweet|
    puts word_substituter(tweet)
  end
#puts shortened_tweets_array
end

def selective_tweet_shortener(tweet)
tweet = tweet.chars
  if tweet.length > 140
    tweet = tweet.join("")
    tweet = word_substituter(tweet)
  else
    tweet = tweet.join("")
  end
tweet
end

def shortened_tweet_truncator(tweet)
tweet = selective_tweet_shortener(tweet)
tweet = tweet.chars
  if tweet.length > 140
    tweet = tweet[0..136]
    tweet << [".",".","."]
    tweet = tweet.join("")
  else
    tweet = tweet.join("")
  end
tweet
end
