require "test_helper"


class QuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    sign_in_as(@user)
    get questions_url
    assert_response :success
  end
end
