require( "minitest/autorun" )
require_relative( "./library" )

class TestLibrary < Minitest::Test

def test_books
library_list = Library.new([{title: "Lord of the rings", rental_details:{student_name: "Jeff", date: "1/12/16"}},
    {title: "The Bourne Identity", rental_details:{student_name: "Dave", date: "13/12/16"}}])
  asset_equal =(title: "Lord of the rings", rental_details:{student_name: "Jeff", date: "1/12/16", library_list.books_list(title, rental_details, student_name, date)
end
