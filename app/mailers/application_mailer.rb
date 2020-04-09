# frozen_string_literal: true

#  A mailer model defines methods used to generate an email message
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
