class ReminderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.reminder_mailer.new_reminder.subject
  #
  def new_reminder
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
