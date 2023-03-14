require "test_helper"

class MemberTest < ActiveSupport::TestCase
  test "member with required fields should be valid" do
    @member = Member.new(email: "email@nothing.com", password: "password")
    assert @member.valid?
  end

  test "member without password is invalid" do 
    @member = Member.new(email: "test@email.com", name: "testuser")
    assert_not @member.valid?
  end

  test "member without email is invalid" do 
    @member = Member.new(name: "carrie", password: "passpass")
    assert_not @member.valid?
  end

  test "member without email or password is invalid" do 
    @member = Member.new(name: "johnny")
    assert_not @member.valid? 
  end

  test "password must be at least 6 characters" do
    @member = Member.new(email: "jd@email.com", name: "john doe", password: "pass")
    assert_not @member.valid?
  end
end
