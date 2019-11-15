class WelcomeMailer < ApplicationMailer
    def send_welcome_mail
        mail(to:"iamshakti2014@gmail.com", from: "shaktiprasadsatapathy96@gmail.com", subject: "colab test", message: "colab successful")
    end
end
 