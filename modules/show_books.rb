require_relative '../data/read_data'
module ListBooks
  include ShowBooks
  def show_books
    if @books.empty? && Book.all.empty?
      puts 'There\'s no books added yet!'
    elsif @books.length > 1
      @books.each { |i| puts %(Title: "#{i['title']}" Author: #{i['author']}) }
    else
      Book.all.each do |book|
        puts %(Title: "#{book.title}", Author: #{book.author})
      end
    end
  end
end
