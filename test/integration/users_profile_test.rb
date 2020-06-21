require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @user = users(:tony)
  end

  test "profile page" do
    get user_path(@user)
    assert_template 'users/show'
    assert_select 'title', full_title(@user.name)
    assert_select 'h1', text: @user.name
    assert_select 'h1>img.gravatar'
    assert_match @user.snapshots.count.to_s, response.body
    assert_select 'div.pagination'
    @user.snapshots.paginate(page: 1).each do |snapshot|
      assert_match snapshot.content, response.body
    end
  end
end
