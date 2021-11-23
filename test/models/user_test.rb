require 'test_helper'

# Unit Testing
# 1 - You test methods
# This is usually only done for the MODEL layer

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    # Mini-Test
    # Built-in Rails Testing Framework
    user = User.new(first_name: "john", last_name: "lennon")
    assert_equal "John Lennon", user.full_name

    # RSpec (not used in the lecture)
    # expect(user.full_name).to q("John Lennon")
  end
end
