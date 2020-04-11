#write your code here
def translate(phrase)
  new_phrase = []
  phrase = phrase.split()
  i = 0
  phrase.each { |word|
    first_vowel = first_vowel(word)
    new_phrase[i] = pig_latinfy(word,first_vowel)
    i = i + 1
  }
  new_phrase.join(' ')
end

def first_vowel(phrase)
  i = 0
  vowels = ['a','e','i','o','u']
  until vowels.include?(phrase[i]) || i == phrase.length
    i = i + 1
  end
  if phrase [i-1] == 'q'
    (i + 1)  
  else  
    i
  end
end

def pig_latinfy(phrase,first_vowel)
  if first_vowel == 0
    new_word = phrase + 'ay'
  else
    i = 0
    new_word = []
    until i == phrase.length - first_vowel
      new_word[i] = phrase[first_vowel + i]
      i = i + 1
    end

    i = phrase.length - first_vowel
    j = 0
    until i == phrase.length 
      new_word[i] = phrase[j]
      i = i + 1
      j = j + 1
    end
    new_word = new_word.join() + 'ay'
  end
end

puts translate('dog dog')