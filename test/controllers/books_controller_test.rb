require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_index_url
    assert_response :success
  end

  test "should create a new book" do
    assert_difference('Book.count') do
      post books_path, params: { book: { title: 'New Book', author: 'John Doe', genre: 'Fiction' } }
    end

    assert_redirected_to books_path
  end

    test "adding a book with no title should fail" do
      assert_no_difference('Book.count') do
        post books_path, params: { book: { title: '', author: 'John Doe', genre: 'Fiction' } }
      end
  
      assert_response :unprocessable_entity
    end

end