class App
    def show_books
      if Book.all.empty?
        puts 'There\'s no books added yet!'
      else
        Book.all.each do |book|
          puts %(Title: "#{book.title}", Author: #{book.author})
        end
      end
    end