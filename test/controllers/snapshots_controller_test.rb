require 'test_helper'

class SnapshotsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @snapshot = snapshots(:project001)
  end

  test "should redirect create when user not logged in" do
    assert_no_difference 'Snapshot.count' do
      post snapshots_path, params: { snapshot: { content: "Lorem Ipsum"} }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when user not logged in" do
    assert_no_difference 'Snapshot.count' do
      delete snapshot_path(@snapshot)
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy for wrong snapshot" do
    log_in_as(users(:tony))
    snapshot = snapshots(:project013)
    assert_no_difference 'Snapshot.count' do
      delete snapshot_path(snapshot)
    end
    assert_redirected_to root_url
  end
end
