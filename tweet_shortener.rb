# Write your code here.

def dictionary
    {"hello": "hi",
    "too": "2",
    "to": "2",
    "two": "2",
    "for": "4",
    "four": "4",
    "be": "b",
    "you": "u",
    "at": "@",
    "and": "&"}
end

def word_substituter(tuit)
    tuit.split(" ").map { |w| dictionary[w.downcase.to_sym] ||= w }.join(" ")
end

def bulk_tweet_shortener(tuit_a)
    tuit_a.each { |t| puts word_substituter(t) }
end

def selective_tweet_shortener(tuit)
    tuit.length > 140 ? word_substituter(tuit) : tuit
end

def shortened_tweet_truncator(tuit)
    word_substituter(tuit)[0...140]
end