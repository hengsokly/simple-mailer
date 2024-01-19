require 'net/smtp'
require './env'
require 'csv'

body = File.read("body.txt")

# Connect to the SMTP server and send the email
Net::SMTP.start(
  ENV["SETTINGS__SMTP__ADDRESS"],
  ENV["SETTINGS__SMTP__PORT"],
  ENV["SETTINGS__SMTP__HOST"],
  ENV["SETTINGS__SMTP__USER_NAME"],
  ENV["SETTINGS__SMTP__PASSWORD"],
  :login
) do |smtp|
  CSV.foreach('./receivers.csv', headers: true) do |row|
    message = <<~MESSAGE
      From: #{ENV["SETTINGS__SMTP__FROM"]}
      To: #{row["email"]}
      MIME-Version: 1.0
      Content-type: text/html
      Subject: #{ENV["SUBJECT"]}

      #{body}
    MESSAGE

    smtp.send_message(message, ENV["SETTINGS__SMTP__FROM"], row["email"])
  end
end
