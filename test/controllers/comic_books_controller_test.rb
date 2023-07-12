require "test_helper"

class ComicBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comic_books_index_url
    assert_response :success
  end

  test "should get show" do
    get comic_books_show_url
    assert_response :success
  end
end
