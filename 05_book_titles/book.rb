class Book
    def title
      @title
    end

    def title=(title)
      small_words = ['a','an','and','the','of','in']
      title = title.split(' ')
      i = 0
      title.each{|word|
        if (small_words.include?(word) == false) || i == 0
          title[i] = word.capitalize
        end
        i = i + 1
      }
      title = title.join(' ')
      @title = title
    end
end

@book = Book.new
@book.title = 'the prince and the pauper'
puts @book.title