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
    smtp.send_message(<<~MESSAGE, ENV["SETTINGS__SMTP__FROM"], row["email"])
      From: #{ENV["SETTINGS__SMTP__FROM"]}
      To: #{row["email"]}
      Subject: #{ENV["SUBJECT"]}

      #{body}
    MESSAGE
  end
end
