require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get members_index_url
    assert_response :success
  end

  test "should get import" do
    get members_import_url
    assert_response :success
  end

end
