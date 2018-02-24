# frozen_string_literal: true

class ExampleMailer < ActionMailer::Base
  default from: "from@example.com"

  def sample_email(author)
    @author = author
    mail(to: @author.email, subject: "Sample Email")
  end
end
