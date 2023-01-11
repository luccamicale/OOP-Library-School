module ListRentalId
  def list_rental_id
    if @rentals.empty?
      puts 'Please add a person and a book first!'
    elsif @rentals.length > 1
      print 'ID of person: '
      id_selected = gets.chomp.to_i
      @rentals.each do |rental|
        puts %(Date: #{rental['date']}, Book "#{rental['title']}" , rented by User ID #{rental['id']}) if rental['person'].to_i == id_selected
      end
    end
  end
end
