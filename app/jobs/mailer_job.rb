class MailerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts 'Hola desde mailer'
  end
end
