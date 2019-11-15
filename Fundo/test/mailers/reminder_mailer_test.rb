require 'test_helper'

class ReminderMailerTest < ActionMailer::TestCase
  test "new_reminder" do
    mail = ReminderMailer.new_reminder
    assert_equal "New reminder", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
