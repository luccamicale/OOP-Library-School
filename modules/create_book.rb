module CreateBook
  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    book = Book.new(title, author)
    @books.push({ 'title' => book.title, 'author' => book.author })
    puts 'Book succesfully created!'
  end
end
