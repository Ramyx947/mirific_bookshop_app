require 'test_helper'

class BookTest < ActiveSupport::TestCase
  fixtures :books
  # 1. test that a book is instantiated with title, description, image_url and price 
  test "book attributes must not be empty" do
    book = Book.new
    assert book.invalid?
    assert book.errors[:title].any?
    assert book.errors[:author].any?
    assert book.errors[:description].any?
    assert book.errors[:price].any?
    assert book.errors[:image_url].any?
  end
  # 2. check that all the titles are unique
  test "book is not valid without a unique title" do
    book = Book.new(
        title: books(:ruby).title,
        author: "Ipsum",
        description: "Lorum",
        price: 1,
        image_url: "john.gif")
      assert book.invalid?
      assert_equal ["has already been taken"], book.errors[:title]
  end 

  # 3. test price is a positive number
  test "book price must be positive" do 
    book = Book.new(
      title: "My book title",
      author: "Ipsum",
      description: "Lorum",
      image_url: "example.jpg")

    book.price =-1
    assert book.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
        book.errors[:price]

    book.price =0
    assert book.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
            book.errors[:price]

    book.price = 1
    assert book.valid?
  end

# 4. test image is jpg, gif or png
  def new_book(image_url)
    Book.new(
      title: "My book title",
      author: "Ipsum",
      description: "Lorum",
      price: 1,
      image_url: image_url)
  end 
  test "image url" do
    ok = %w{ john.gif john.jpg john.png JOHN.JPG JOHN.Jpg
          http://a.b.c/x/y/z/john.gif }
    bad = %w{ john.doc john.gif/more john.gif.more }

    ok.each do |image_url|
      assert new_book(image_url).valid?,
        "#{image_url} shouldn't be invalid"
    end

    bad.each do |image_url|
      assert new_book(image_url).invalid?,
        "#{image_url} shouldn't be valid"
    end
  end

  
end
