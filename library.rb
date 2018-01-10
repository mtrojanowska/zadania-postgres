class Library
  attr_accessor :books, :book
  def initialize(books)
    @books = books
    @book = book
  end
  def add(book)
    @books<<book
  end

  def take(book)
    index = books.index(book)
  return books.delete_at(index) if index
  end
end

class Book
  attr_accessor :author, :title
  def initialize(author, title)
      @author = author
      @title = title
  end
end

class List
  attr_accessor :readers
  def initialize(readers)
    @readers = readers
  end
  def add_to_list(reader)
    @readers << reader
  end
end

class Reader
  attr_accessor :reader, :books, :book, :readers_list
  def initialize(reader)
    @reader = reader
    @readers_list = []
    @books = books
    @book = book
  end
  def borrow(book)
    book = books.take(book)
    readers_list << book
  end
  true
end



books = [
Book.new("B.Nadolska", "Gdzie pieją koguty"),
Book.new("R. Sarapata", "Jadłowstręt")
]

library = Library.new(books)

book=Book.new("B.Wolna", "Za górami, za lasami")
library.add(book)

library.books.each do |book|
 puts "Author: #{book.author}"
 puts "TItle:  #{book.title}"
end


readers = [
Reader.new("A. Nowakowska"),
Reader.new("H.Bazgroł")
]
list=List.new(readers)


reader=Reader.new("Z.Appelbaum")
list.add_to_list(reader)

p reader.borrow('Za górami, za lasami')
