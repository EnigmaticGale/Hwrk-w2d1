require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup

    @new_book = {
      title: "dragonball",
      rental_details: {
        student_name: "",
        date: ""
          }
        }

    books_array = [
      {
    title: "lord_of_the_rings",
    rental_details:
      {
        student_name: "Jeff",
        date: "01/12/16" }
   },

   {
    title: "jojos_bizzare_adventure",
    rental_details:
      {
        student_name: "Dio",
        date: "05/04/16" }
   },

   {
    title: "air_gear",
    rental_details:
      {
        student_name: "Ikki",
        date: "30/11/17" }
    }
    ]
    @library = LibraryBooks.new(books_array)
  end

  def test_get_book_name
    assert_equal("lord_of_the_rings", @library.books[0][:title])
  end

  def test_return_book_info_from_name
    assert_equal({
  title: "lord_of_the_rings",
  rental_details:
    {
      student_name: "Jeff",
      date: "01/12/16" }
 }, @library.return_book_info_from_name("lord_of_the_rings"))
  end

  def test_return_rental_details
    assert_equal(@library.return_rental_details("jojos_bizzare_adventure"),
      {
        student_name: "Dio",
        date: "05/04/16" } )
  end

  def test_add_new_book
    before_count = @library.books.length
    before_count += 1
    @library.add_new_book(@newbook)
    assert_equal(before_count, @library.books.length)
  end

  def test_add_rental_details
    @library.add_rental_details(@library.books[1][:title],"giorno","06/06/06")
    
    assert_equal(@library.books[1][:rental_details][:student_name], "giorno")
    assert_equal(@library.books[1][:rental_details][:date], "06/06/06")
  end

end
