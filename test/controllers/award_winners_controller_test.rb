require "test_helper"

class AwardWinnersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get award_winners_index_url
    assert_response :success
  end

  test "should get show" do
    get award_winners_show_url
    assert_response :success
  end
end
