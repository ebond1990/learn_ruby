#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, i = 2)
  word = ((word + " ") * (i)).strip
end

def start_of_word(word,i)
  word[0,i]
end

def first_word(word)
  i = word.index(" ")
  word[0,i]
end

def titleize(words)
  little_words = ["the", "and", "over", "by", "a", "of"]
  list_of_words = words.split(' ')
  list_of_words.map!{|x| x.downcase}
  list_of_words.map!{|x| little_words.include?(x) && list_of_words[0] != x ? x : x.capitalize }.join(' ')
end
