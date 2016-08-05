require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  
  def setup
  	@follower = users(:michael)
  	@followed = users(:archer)
  	@relationship = Relationship.new(follower_id: @follower.id,followed_id:@followed.id)
  end

  test "relationship should be valid" do
  	assert @relationship.valid?
  end

  test "follower_id should be presence" do
  	@relationship.follower_id = nil
  	assert_not @relationship.valid?
  end

  test "followed_id should be presence" do
  	@relationship.followed_id = nil
  	assert_not @relationship.valid?
  end
end
