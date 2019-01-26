require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  # unit testing for Book Model
  # run using rails test:models
  setup do
    @book = books(:one)
    @title = "The great book #{rand(1000)}"
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post books_url, params: { 
        book: 
          { 
          author: @book.author,  
          description: @book.description, 
          image_url: @book.image_url, 
          price: @book.price, 
          title: @title, 
          } 
        }
    end
    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book),params: { 
      book: { 
        author: @book.author,  
        description: @book.description, 
        image_url: @book.image_url, 
        price: @book.price, 
        title: @title, 
        } 
      }
    assert_redirected_to book_url(@book)
  end

  test "cant't delete book in cart" do
    assert_difference('Book.count', 0) do
      delete book_url(books(:two))
    end
    assert_redirected_to books_url
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end
    assert_redirected_to books_url
  end

end