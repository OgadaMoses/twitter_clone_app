require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "account_activation" do
    user = users(:moses)
    user.activation_token = User.new_token
    mail = UserMailer.account_activation(user)
    assert_equal "Account activation", mail.subject
    assert_equal [user.email], mail.to
    assert_equal ["ogadamoses59@gmail.com"], mail.from
    assert_match user.name,                  mail.body.encoded
    assert_match user.activation_token,      mail.body.encoded
    assert_match CGI.escape(user.email),     mail.body.encoded 
  end
<<<<<<< HEAD

  test "password_reset" do
    user = users(:moses)
    user.reset_token = User.new_token
    mail = UserMailer.account_activation(user)
    assert_equal "Account activation", mail.subject
    assert_equal [user.email], mail.to
    assert_equal ["ogadamoses59@gmail.com"], mail.from
    assert_match user.name,                  mail.body.encoded
    assert_match user.activation_token,      mail.body.encoded
    assert_match CGI.escape(user.email),     mail.body.encoded 
  end

=======
>>>>>>> 16259c97f13738c1f4fa5ea35eb5ad11a885808a
end
