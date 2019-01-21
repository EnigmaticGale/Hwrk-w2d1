class LibraryBooks

  attr_reader :books
  attr_writer :books

  def initialize(books_array)
    @books = books_array
  end

  def return_book_info_from_name(name)
    for book in @books
      return book if (book[:title] == name)
    end
  end

  def return_rental_details(name)
    for book in @books
      return book[:rental_details] if (book[:title] == name)
    end
  end

  def add_new_book(newbook)
    @books.push(newbook)
  end

  def add_rental_details(title,new_student_name,new_date)
    for book in @books
      book[:rental_details][:student_name] = new_student_name if (book[:title] == title)
      book[:rental_details][:date] = new_date if (book[:title] == title)
    end

  end


end
